import 'package:mint/data/service/remote_agora.dart';

abstract class MuteMicrophoneUseCase {
  MuteMicrophoneUseCase();

  Future<void> call({required bool isMicToggled});
}

class RemoteMuteMicrophoneUseCase implements MuteMicrophoneUseCase {
  RemoteMuteMicrophoneUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call({required bool isMicToggled}) {
    return _service.muteMic(isMicToggled: isMicToggled);
  }
}
