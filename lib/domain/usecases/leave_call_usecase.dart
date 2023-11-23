import 'package:mint/data/service/remote_agora.dart';

abstract class LeaveCallUseCase {
  LeaveCallUseCase();

  Future<void> call();
}

class RemoteLeaveCallUseCase implements LeaveCallUseCase {
  RemoteLeaveCallUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call() {
    return _service.leaveCall();
  }
}
