// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)
        sendMessage,
    required TResult Function(File file, String doctorId) sendImageMessage,
    required TResult Function() getMessages,
    required TResult Function(String msgId) updateMessageStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult? Function(File file, String doctorId)? sendImageMessage,
    TResult? Function()? getMessages,
    TResult? Function(String msgId)? updateMessageStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult Function(File file, String doctorId)? sendImageMessage,
    TResult Function()? getMessages,
    TResult Function(String msgId)? updateMessageStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) sendMessage,
    required TResult Function(SendImageMessageEvent value) sendImageMessage,
    required TResult Function(GetMessagesEvent value) getMessages,
    required TResult Function(UpdateMessageStatusEvent value)
        updateMessageStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? sendMessage,
    TResult? Function(SendImageMessageEvent value)? sendImageMessage,
    TResult? Function(GetMessagesEvent value)? getMessages,
    TResult? Function(UpdateMessageStatusEvent value)? updateMessageStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? sendMessage,
    TResult Function(SendImageMessageEvent value)? sendImageMessage,
    TResult Function(GetMessagesEvent value)? getMessages,
    TResult Function(UpdateMessageStatusEvent value)? updateMessageStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SendMessageEventImplCopyWith<$Res> {
  factory _$$SendMessageEventImplCopyWith(_$SendMessageEventImpl value,
          $Res Function(_$SendMessageEventImpl) then) =
      __$$SendMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String msg, DateTime sent, String fromId, String toId, String type});
}

/// @nodoc
class __$$SendMessageEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendMessageEventImpl>
    implements _$$SendMessageEventImplCopyWith<$Res> {
  __$$SendMessageEventImplCopyWithImpl(_$SendMessageEventImpl _value,
      $Res Function(_$SendMessageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? sent = null,
    Object? fromId = null,
    Object? toId = null,
    Object? type = null,
  }) {
    return _then(_$SendMessageEventImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      sent: null == sent
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fromId: null == fromId
          ? _value.fromId
          : fromId // ignore: cast_nullable_to_non_nullable
              as String,
      toId: null == toId
          ? _value.toId
          : toId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendMessageEventImpl implements SendMessageEvent {
  const _$SendMessageEventImpl(
      {required this.msg,
      required this.sent,
      required this.fromId,
      required this.toId,
      required this.type});

  @override
  final String msg;
  @override
  final DateTime sent;
  @override
  final String fromId;
  @override
  final String toId;
  @override
  final String type;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(msg: $msg, sent: $sent, fromId: $fromId, toId: $toId, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageEventImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.sent, sent) || other.sent == sent) &&
            (identical(other.fromId, fromId) || other.fromId == fromId) &&
            (identical(other.toId, toId) || other.toId == toId) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg, sent, fromId, toId, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      __$$SendMessageEventImplCopyWithImpl<_$SendMessageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)
        sendMessage,
    required TResult Function(File file, String doctorId) sendImageMessage,
    required TResult Function() getMessages,
    required TResult Function(String msgId) updateMessageStatus,
  }) {
    return sendMessage(msg, sent, fromId, toId, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult? Function(File file, String doctorId)? sendImageMessage,
    TResult? Function()? getMessages,
    TResult? Function(String msgId)? updateMessageStatus,
  }) {
    return sendMessage?.call(msg, sent, fromId, toId, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult Function(File file, String doctorId)? sendImageMessage,
    TResult Function()? getMessages,
    TResult Function(String msgId)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(msg, sent, fromId, toId, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) sendMessage,
    required TResult Function(SendImageMessageEvent value) sendImageMessage,
    required TResult Function(GetMessagesEvent value) getMessages,
    required TResult Function(UpdateMessageStatusEvent value)
        updateMessageStatus,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? sendMessage,
    TResult? Function(SendImageMessageEvent value)? sendImageMessage,
    TResult? Function(GetMessagesEvent value)? getMessages,
    TResult? Function(UpdateMessageStatusEvent value)? updateMessageStatus,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? sendMessage,
    TResult Function(SendImageMessageEvent value)? sendImageMessage,
    TResult Function(GetMessagesEvent value)? getMessages,
    TResult Function(UpdateMessageStatusEvent value)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class SendMessageEvent implements ChatEvent {
  const factory SendMessageEvent(
      {required final String msg,
      required final DateTime sent,
      required final String fromId,
      required final String toId,
      required final String type}) = _$SendMessageEventImpl;

  String get msg;
  DateTime get sent;
  String get fromId;
  String get toId;
  String get type;
  @JsonKey(ignore: true)
  _$$SendMessageEventImplCopyWith<_$SendMessageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendImageMessageEventImplCopyWith<$Res> {
  factory _$$SendImageMessageEventImplCopyWith(
          _$SendImageMessageEventImpl value,
          $Res Function(_$SendImageMessageEventImpl) then) =
      __$$SendImageMessageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file, String doctorId});
}

/// @nodoc
class __$$SendImageMessageEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$SendImageMessageEventImpl>
    implements _$$SendImageMessageEventImplCopyWith<$Res> {
  __$$SendImageMessageEventImplCopyWithImpl(_$SendImageMessageEventImpl _value,
      $Res Function(_$SendImageMessageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? doctorId = null,
  }) {
    return _then(_$SendImageMessageEventImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendImageMessageEventImpl implements SendImageMessageEvent {
  const _$SendImageMessageEventImpl(this.file, this.doctorId);

  @override
  final File file;
  @override
  final String doctorId;

  @override
  String toString() {
    return 'ChatEvent.sendImageMessage(file: $file, doctorId: $doctorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendImageMessageEventImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, doctorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendImageMessageEventImplCopyWith<_$SendImageMessageEventImpl>
      get copyWith => __$$SendImageMessageEventImplCopyWithImpl<
          _$SendImageMessageEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)
        sendMessage,
    required TResult Function(File file, String doctorId) sendImageMessage,
    required TResult Function() getMessages,
    required TResult Function(String msgId) updateMessageStatus,
  }) {
    return sendImageMessage(file, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult? Function(File file, String doctorId)? sendImageMessage,
    TResult? Function()? getMessages,
    TResult? Function(String msgId)? updateMessageStatus,
  }) {
    return sendImageMessage?.call(file, doctorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult Function(File file, String doctorId)? sendImageMessage,
    TResult Function()? getMessages,
    TResult Function(String msgId)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(file, doctorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) sendMessage,
    required TResult Function(SendImageMessageEvent value) sendImageMessage,
    required TResult Function(GetMessagesEvent value) getMessages,
    required TResult Function(UpdateMessageStatusEvent value)
        updateMessageStatus,
  }) {
    return sendImageMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? sendMessage,
    TResult? Function(SendImageMessageEvent value)? sendImageMessage,
    TResult? Function(GetMessagesEvent value)? getMessages,
    TResult? Function(UpdateMessageStatusEvent value)? updateMessageStatus,
  }) {
    return sendImageMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? sendMessage,
    TResult Function(SendImageMessageEvent value)? sendImageMessage,
    TResult Function(GetMessagesEvent value)? getMessages,
    TResult Function(UpdateMessageStatusEvent value)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (sendImageMessage != null) {
      return sendImageMessage(this);
    }
    return orElse();
  }
}

abstract class SendImageMessageEvent implements ChatEvent {
  const factory SendImageMessageEvent(final File file, final String doctorId) =
      _$SendImageMessageEventImpl;

  File get file;
  String get doctorId;
  @JsonKey(ignore: true)
  _$$SendImageMessageEventImplCopyWith<_$SendImageMessageEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMessagesEventImplCopyWith<$Res> {
  factory _$$GetMessagesEventImplCopyWith(_$GetMessagesEventImpl value,
          $Res Function(_$GetMessagesEventImpl) then) =
      __$$GetMessagesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMessagesEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$GetMessagesEventImpl>
    implements _$$GetMessagesEventImplCopyWith<$Res> {
  __$$GetMessagesEventImplCopyWithImpl(_$GetMessagesEventImpl _value,
      $Res Function(_$GetMessagesEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMessagesEventImpl implements GetMessagesEvent {
  const _$GetMessagesEventImpl();

  @override
  String toString() {
    return 'ChatEvent.getMessages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMessagesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)
        sendMessage,
    required TResult Function(File file, String doctorId) sendImageMessage,
    required TResult Function() getMessages,
    required TResult Function(String msgId) updateMessageStatus,
  }) {
    return getMessages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult? Function(File file, String doctorId)? sendImageMessage,
    TResult? Function()? getMessages,
    TResult? Function(String msgId)? updateMessageStatus,
  }) {
    return getMessages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult Function(File file, String doctorId)? sendImageMessage,
    TResult Function()? getMessages,
    TResult Function(String msgId)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) sendMessage,
    required TResult Function(SendImageMessageEvent value) sendImageMessage,
    required TResult Function(GetMessagesEvent value) getMessages,
    required TResult Function(UpdateMessageStatusEvent value)
        updateMessageStatus,
  }) {
    return getMessages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? sendMessage,
    TResult? Function(SendImageMessageEvent value)? sendImageMessage,
    TResult? Function(GetMessagesEvent value)? getMessages,
    TResult? Function(UpdateMessageStatusEvent value)? updateMessageStatus,
  }) {
    return getMessages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? sendMessage,
    TResult Function(SendImageMessageEvent value)? sendImageMessage,
    TResult Function(GetMessagesEvent value)? getMessages,
    TResult Function(UpdateMessageStatusEvent value)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (getMessages != null) {
      return getMessages(this);
    }
    return orElse();
  }
}

abstract class GetMessagesEvent implements ChatEvent {
  const factory GetMessagesEvent() = _$GetMessagesEventImpl;
}

/// @nodoc
abstract class _$$UpdateMessageStatusEventImplCopyWith<$Res> {
  factory _$$UpdateMessageStatusEventImplCopyWith(
          _$UpdateMessageStatusEventImpl value,
          $Res Function(_$UpdateMessageStatusEventImpl) then) =
      __$$UpdateMessageStatusEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msgId});
}

/// @nodoc
class __$$UpdateMessageStatusEventImplCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$UpdateMessageStatusEventImpl>
    implements _$$UpdateMessageStatusEventImplCopyWith<$Res> {
  __$$UpdateMessageStatusEventImplCopyWithImpl(
      _$UpdateMessageStatusEventImpl _value,
      $Res Function(_$UpdateMessageStatusEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msgId = null,
  }) {
    return _then(_$UpdateMessageStatusEventImpl(
      null == msgId
          ? _value.msgId
          : msgId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateMessageStatusEventImpl implements UpdateMessageStatusEvent {
  const _$UpdateMessageStatusEventImpl(this.msgId);

  @override
  final String msgId;

  @override
  String toString() {
    return 'ChatEvent.updateMessageStatus(msgId: $msgId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMessageStatusEventImpl &&
            (identical(other.msgId, msgId) || other.msgId == msgId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msgId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMessageStatusEventImplCopyWith<_$UpdateMessageStatusEventImpl>
      get copyWith => __$$UpdateMessageStatusEventImplCopyWithImpl<
          _$UpdateMessageStatusEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)
        sendMessage,
    required TResult Function(File file, String doctorId) sendImageMessage,
    required TResult Function() getMessages,
    required TResult Function(String msgId) updateMessageStatus,
  }) {
    return updateMessageStatus(msgId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult? Function(File file, String doctorId)? sendImageMessage,
    TResult? Function()? getMessages,
    TResult? Function(String msgId)? updateMessageStatus,
  }) {
    return updateMessageStatus?.call(msgId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String msg, DateTime sent, String fromId, String toId, String type)?
        sendMessage,
    TResult Function(File file, String doctorId)? sendImageMessage,
    TResult Function()? getMessages,
    TResult Function(String msgId)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (updateMessageStatus != null) {
      return updateMessageStatus(msgId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendMessageEvent value) sendMessage,
    required TResult Function(SendImageMessageEvent value) sendImageMessage,
    required TResult Function(GetMessagesEvent value) getMessages,
    required TResult Function(UpdateMessageStatusEvent value)
        updateMessageStatus,
  }) {
    return updateMessageStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendMessageEvent value)? sendMessage,
    TResult? Function(SendImageMessageEvent value)? sendImageMessage,
    TResult? Function(GetMessagesEvent value)? getMessages,
    TResult? Function(UpdateMessageStatusEvent value)? updateMessageStatus,
  }) {
    return updateMessageStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendMessageEvent value)? sendMessage,
    TResult Function(SendImageMessageEvent value)? sendImageMessage,
    TResult Function(GetMessagesEvent value)? getMessages,
    TResult Function(UpdateMessageStatusEvent value)? updateMessageStatus,
    required TResult orElse(),
  }) {
    if (updateMessageStatus != null) {
      return updateMessageStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateMessageStatusEvent implements ChatEvent {
  const factory UpdateMessageStatusEvent(final String msgId) =
      _$UpdateMessageStatusEventImpl;

  String get msgId;
  @JsonKey(ignore: true)
  _$$UpdateMessageStatusEventImplCopyWith<_$UpdateMessageStatusEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> messages)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> messages)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadedMessagesImplCopyWith<$Res> {
  factory _$$LoadedMessagesImplCopyWith(_$LoadedMessagesImpl value,
          $Res Function(_$LoadedMessagesImpl) then) =
      __$$LoadedMessagesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Message> messages});
}

/// @nodoc
class __$$LoadedMessagesImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadedMessagesImpl>
    implements _$$LoadedMessagesImplCopyWith<$Res> {
  __$$LoadedMessagesImplCopyWithImpl(
      _$LoadedMessagesImpl _value, $Res Function(_$LoadedMessagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$LoadedMessagesImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$LoadedMessagesImpl implements LoadedMessages {
  const _$LoadedMessagesImpl(final List<Message> messages)
      : _messages = messages;

  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.loaded(messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedMessagesImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedMessagesImplCopyWith<_$LoadedMessagesImpl> get copyWith =>
      __$$LoadedMessagesImplCopyWithImpl<_$LoadedMessagesImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> messages)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedMessages implements ChatState {
  const factory LoadedMessages(final List<Message> messages) =
      _$LoadedMessagesImpl;

  List<Message> get messages;
  @JsonKey(ignore: true)
  _$$LoadedMessagesImplCopyWith<_$LoadedMessagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> messages)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'ChatState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Message> messages) loaded,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Message> messages)? loaded,
    TResult? Function()? loading,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Message> messages)? loaded,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadedMessages value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadedMessages value)? loaded,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadedMessages value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error() = _$ErrorImpl;
}
