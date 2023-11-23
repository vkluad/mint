import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mint/backbone/bloc_status.dart';
import 'package:mint/domain/usecases/get_notification_permission.dart';
import 'package:mint/domain/usecases/get_permission_usecase.dart';
import 'package:mint/domain/usecases/request_notification_usecase.dart';
import 'package:mint/domain/usecases/request_permission_usecase.dart';

part 'permission_event.dart';
part 'permission_state.dart';
part 'permission_bloc.freezed.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  PermissionBloc(
    this._requestChatPermissionUseCase,
    this._getChatPermissionUseCase,
    this._getNotificationUseCase,
    this._requestNotificationUseCase,
  ) : super(
          const PermissionState(
            status: PermissionNotificationStatus.waitingForPermission,
          ),
        ) {
    on<PermissionEvent>((event, emit) async {
      await event.when(
        requestNotificationPermission: () async =>
            _requestNotificationPermission(emit),
        getNotificationPermission: () async => _getNotificationPermission(emit),
        requestChatPermission: () async => _requestChatPermission(emit),
        getChatPermission: () async => _getChatPermission(emit),
      );
    });
  }
  final RequestChatPermissionUseCase _requestChatPermissionUseCase;
  final GetChatPermissionUseCase _getChatPermissionUseCase;
  final GetNotificationPermissionUseCase _getNotificationUseCase;
  final RequestNotificationPermissionUseCase _requestNotificationUseCase;

  Future<void> _requestChatPermission(Emitter<PermissionState> emit) async {
    emit(
      const PermissionState(
        status: PermissionNotificationStatus.waitingForPermission,
      ),
    );
    await _requestChatPermissionUseCase
        .call()
        .then((value) => _getChatPermission(emit));
  }

  Future<void> _getChatPermission(Emitter<PermissionState> emit) async {
    await emit.forEach(
      _getChatPermissionUseCase.call(),
      onData: (isGranted) {
        return PermissionState(
          status: isGranted
              ? PermissionNotificationStatus.mediaPermissionGranted
              : PermissionNotificationStatus.mediaPermissionDenied,
          isNotificationGranted: state.isNotificationGranted,
          isAudioGranted: isGranted,
          isVideoGranted: isGranted,
        );
      },
    );
  }

  Future<void> _getNotificationPermission(Emitter<PermissionState> emit) async {
    await emit.forEach(
      _getNotificationUseCase.call(),
      onData: (isGranted) {
        return PermissionState(
          status: isGranted
              ? PermissionNotificationStatus.notificationPermissionGranted
              : PermissionNotificationStatus.notificationPermissionDenied,
          isNotificationGranted: isGranted,
          isAudioGranted: state.isAudioGranted,
          isVideoGranted: state.isVideoGranted,
        );
      },
    );
  }

  Future<void> _requestNotificationPermission(
    Emitter<PermissionState> emit,
  ) async {
    emit(const PermissionState(
        status: PermissionNotificationStatus.waitingForPermission,),);
    await _requestNotificationUseCase
        .call()
        .then((value) => _getNotificationPermission(emit));
  }
}
