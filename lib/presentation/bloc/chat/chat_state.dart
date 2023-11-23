part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loaded(List<Message> messages) = LoadedMessages;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.error() = _Error;
}
