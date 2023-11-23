import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/domain/usecases/get_messages_usecase.dart';
import 'package:mint/domain/usecases/send_image_message_usecase.dart';
import 'package:mint/domain/usecases/send_message_usecase.dart';
import 'package:mint/domain/usecases/update_msg_status_usecase.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc(
    this._getMessagesUseCase,
    this._sendMessageUseCase,
    this._updateMessageStatusUseCase,
    this._sendImageMessageUseCase,
  ) : super(const _Initial()) {
    on<ChatEvent>((event, emit) async {
      await event.when(
        sendImageMessage: (file, doctorId) async => _sendImageMessage(
          emit,
          file,
          doctorId,
        ),
        sendMessage: (msg, sent, fromId, toId, type) async {
          await _sendMessage(
            emit,
            msg: msg,
            sent: sent,
            fromId: fromId,
            toId: toId,
            type: type,
          );
        },
        getMessages: () async => _getMessages(
          emit,
        ),
        updateMessageStatus: (msgId) async => _updateMessageStatus(emit, msgId),
      );
    });
  }

  final GetMessagesUseCase _getMessagesUseCase;
  final SendMessageUseCase _sendMessageUseCase;
  final SendImageMessageUseCase _sendImageMessageUseCase;
  final UpdateMessageStatusUseCase _updateMessageStatusUseCase;

  Future<void> _getMessages(
    Emitter<ChatState> emit,
  ) async {
    emit(const _Loading());
    await _getMessagesUseCase.call().forEach((messages) {
      var loadedMessages = <Message>[];
      for (final msg in messages) {
        loadedMessages.add(msg);
      }
      loadedMessages = loadedMessages
        ..sort(
          (a, b) => a.sent.compareTo(b.sent),
        );
      emit(LoadedMessages(loadedMessages));
    });
  }

  Future<void> _sendMessage(
    Emitter<ChatState> emit, {
    required String msg,
    required DateTime sent,
    required String fromId,
    required String toId,
    required String type,
  }) async {
    await _sendMessageUseCase.call(
      msg: msg,
      sent: sent,
      fromId: fromId,
      toId: toId,
      type: type,
    );
  }

  Future<void> _sendImageMessage(
    Emitter<ChatState> emit,
    File file,
    String doctorId,
  ) async {
    await _sendImageMessageUseCase.call(file, doctorId);
  }

  Future<void> _updateMessageStatus(
    Emitter<ChatState> emit,
    String msgId,
  ) async {
    await _updateMessageStatusUseCase.call(msgId);
  }
}
