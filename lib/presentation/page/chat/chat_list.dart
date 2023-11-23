import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/chat/chat_bloc.dart';
import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:mint/presentation/widget/doctor_chat_box.dart';
import 'package:mint/presentation/widget/loading_indicator.dart';
import 'package:mint/theme/text_styles.dart';

@RoutePage()
class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final _doctorbloc = sl<DoctorBloc>();
  final _authBloc = sl<AuthBloc>();
  final _chatBloc = sl<ChatBloc>();
  Set<String> chatIds = <String>{};

  bool isMessageInChat(Message message, String doctorId, String userId) {
    return message.fromId == userId && message.toId == doctorId ||
        message.fromId == doctorId && message.toId == userId;
  }

  @override
  void initState() {
    super.initState();
    _doctorbloc.add(const GetDoctorsEvent());

    _chatBloc.add(const GetMessagesEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          AppLocalizations.of(context)!.messages,
          style:
              TextStyles.body.copyWith(color: Theme.of(context).primaryColor),
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: _authBloc,
        builder: (context, state) {
          return state.maybeWhen(
            authenticated: (user) {
              return BlocBuilder<ChatBloc, ChatState>(
                bloc: _chatBloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loading: () => const CustomLoadingIndicator(),
                    loaded: (loadedMessages) {
                      chatIds.clear();

                      for (final message in loadedMessages) {
                        if (message.toId == user.id) {
                          chatIds.add(message.fromId);
                        } else if (message.fromId == user.id) {
                          chatIds.add(message.toId);
                        }
                      }

                      final chatIdsList = chatIds.toList();

                      return ListView.builder(
                        itemBuilder: (context, index) {
                          return BlocBuilder<DoctorBloc, DoctorState>(
                            bloc: _doctorbloc,
                            builder: (context, state) {
                              return state.maybeWhen(
                                orElse: () => const SizedBox.shrink(),
                                loaded: (doctors) {
                                  final doctor = doctors.firstWhere(
                                    (doctor) => doctor.id == chatIdsList[index],
                                  );

                                  final lastMessage = loadedMessages.lastWhere(
                                    (message) => isMessageInChat(
                                        message, doctor.id, user.id),
                                  );

                                  final chatMessages = loadedMessages
                                      .where(
                                        (message) => isMessageInChat(
                                            message, doctor.id, user.id),
                                      )
                                      .toList();

                                  final unreadCount = chatMessages
                                      .where(
                                        (message) =>
                                            message.read == null &&
                                            message.fromId != user.id,
                                      )
                                      .toList()
                                      .length;

                                  return GestureDetector(
                                    onTap: () => context.router.navigate(
                                      ChatRoute(doctorId: doctor.id),
                                    ),
                                    child: ChatBox(
                                      unreadCount: unreadCount,
                                      doctor: doctor,
                                      userId: user.id,
                                      lastMessage: lastMessage,
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        itemCount: chatIdsList.length,
                      );
                    },
                  );
                },
              );
            },
            orElse: () => const CustomLoadingIndicator(),
          );
        },
      ),
    );
  }
}
