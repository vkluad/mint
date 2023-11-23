import 'package:mint/data/service/remote_agora.dart';

abstract class MuteVideoUseCase {
  MuteVideoUseCase();

  Future<void> call({required bool isVideoMuted});
}

class RemoteMuteVideoUseCase implements MuteVideoUseCase {
  RemoteMuteVideoUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call({required bool isVideoMuted}) {
    return _service.toggleCamera(isVideoMuted: isVideoMuted);
  }
}
