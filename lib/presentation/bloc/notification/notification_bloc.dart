import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/domain/usecases/get_notification_status_usecase.dart';
import 'package:mint/domain/usecases/set_notification_status_usecase.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(
      this._getNotificationStatusUseCase, this._setNotificationStatusUseCase,)
      : super(const _Initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.when(
        setNotificationStatus: (isNotificationAllowed) async {
          await _setNotificationStatus(
            emit,
            isNotificationAllowed: isNotificationAllowed,
          );
        },
        getNotificationStatus: () async {
          await _getNotificationStatus(emit);
        },
      );
    });
  }

  final GetNotificationStatusUseCase _getNotificationStatusUseCase;
  final SetNotificationStatusUseCase _setNotificationStatusUseCase;

  Future<void> _getNotificationStatus(Emitter<NotificationState> emit) async {
    await _getNotificationStatusUseCase
        .call()
        .then((value) => emit(_Loaded(isNotificationAllowed: value)));
  }

  Future<void> _setNotificationStatus(
    Emitter<NotificationState> emit, {
    required bool isNotificationAllowed,
  }) async {
    await _setNotificationStatusUseCase
        .call(isNotificationAllowed: isNotificationAllowed)
        .then((value) => _getNotificationStatus(emit));
  }
}
