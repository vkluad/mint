import 'package:mint/data/service/remote_agora.dart';

abstract class SwitchCameraUseCase {
  SwitchCameraUseCase();

  Future<void> call();
}

class RemoteSwitchCameraUseCase implements SwitchCameraUseCase {
  RemoteSwitchCameraUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call() {
    return _service.switchCamera();
  }
}
