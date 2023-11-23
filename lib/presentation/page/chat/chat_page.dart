import 'dart:io';
import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/chat/chat_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/widget/chat_app_bar.dart';
import 'package:mint/presentation/widget/chat_bottom_textbar.dart';
import 'package:mint/presentation/widget/first_message_date.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/presentation/widget/message_listview.dart';
import 'package:mint/presentation/widget/no_messages_box.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({
    @PathParam('doctorId') required this.doctorId,
    super.key,
  });

  final String doctorId;

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final _chatBloc = sl<ChatBloc>();
  final _authBloc = sl<AuthBloc>();
  final _doctorBloc = sl<DoctorBloc>();

  bool isSentByDoctor(Message message) {
    return message.fromId == widget.doctorId;
  }

  @override
  void initState() {
    super.initState();
    _doctorBloc.add(const GetDoctorsEvent());

    _chatBloc.add(const GetMessagesEvent());
  }

  void scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      bloc: _authBloc,
      builder: (context, state) {
        return state.maybeWhen(
          authenticated: (user) {
            return BlocBuilder<DoctorBloc, DoctorState>(
              bloc: _doctorBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const CustomLoadingIndicator(),
                  loaded: (doctors) {
                    final chatDoctor = doctors.firstWhere(
                      (doctor) => doctor.id == widget.doctorId,
                    );
                    return Scaffold(
                      appBar: PreferredSize(
                        preferredSize: const Size.fromHeight(kToolbarHeight),
                        child: ChatAppBar(doctor: chatDoctor),
                      ),
                      backgroundColor: Theme.of(context).colorScheme.background,
                      resizeToAvoidBottomInset: true,
                      body: Stack(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(bottom: 55),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: SingleChildScrollView(
                                      controller: _scrollController,
                                      child: BlocBuilder<ChatBloc, ChatState>(
                                        bloc: _chatBloc,
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            orElse: () =>
                                                const SizedBox.shrink(),
                                            loading: () =>
                                                const CustomLoadingIndicator(),
                                            loaded: (loadedMessages) {
                                              var messages = loadedMessages
                                                  .where(
                                                    (message) =>
                                                        isSentByDoctor(
                                                                message) &&
                                                            message.toId ==
                                                                user.id ||
                                                        message.fromId ==
                                                                user.id &&
                                                            message.toId ==
                                                                widget.doctorId,
                                                  )
                                                  .toList();
                                              if (messages.isNotEmpty) {
                                                messages = messages.toList()
                                                  ..sort(
                                                    (a, b) => a.sent
                                                        .compareTo(b.sent),
                                                  );
                                                for (final message
                                                    in messages) {
                                                  if (message.read == null &&
                                                      message.fromId !=
                                                          user.id) {
                                                    _chatBloc.add(
                                                      UpdateMessageStatusEvent(
                                                        message.messageId,
                                                      ),
                                                    );
                                                  }
                                                }

                                                WidgetsBinding.instance
                                                    .addPostFrameCallback((_) {
                                                  scrollToBottom();
                                                });
                                                return ListView(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  children: [
                                                    const Divider(),
                                                    Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: FirstMessageDate(
                                                        messageDate:
                                                            messages.first.sent,
                                                      ),
                                                    ),
                                                    MessagesListView(
                                                      messages: messages,
                                                      senderId: user.id,
                                                    )
                                                  ],
                                                );
                                              } else {
                                                return const NoMessagesBox();
                                              }
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          ChatBottomTextBar(
                            controller: _controller,
                            imageCallback: () async {
                              final picker = ImagePicker();
                              final image = await picker.pickImage(
                                source: ImageSource.gallery,
                                imageQuality: 70,
                              );
                              if (image != null) {
                                _chatBloc.add(
                                  SendImageMessageEvent(
                                    File(image.path),
                                    widget.doctorId,
                                  ),
                                );
                              }
                            },
                            textFieldCallback: (value) {
                              if (value.isNotEmpty) {
                                _chatBloc.add(
                                  SendMessageEvent(
                                    msg: value,
                                    sent: DateTime.now(),
                                    fromId: user.id,
                                    toId: widget.doctorId,
                                    type: 'text',
                                  ),
                                );
                                _controller.clear();
                              }
                            },
                          )
                        ],
                      ),
                    );
                  },
                  orElse: () => const SizedBox.shrink(),
                );
              },
            );
          },
          loading: () => const CustomLoadingIndicator(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
