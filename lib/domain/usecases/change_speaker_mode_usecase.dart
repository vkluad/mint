import 'package:mint/data/service/remote_agora.dart';

abstract class ChangeSpeakerModeUseCase {
  ChangeSpeakerModeUseCase();

  Future<void> call({required bool isSpeakerOn});
}

class RemoteChangeSpeakerModeUseCase implements ChangeSpeakerModeUseCase {
  RemoteChangeSpeakerModeUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call({required bool isSpeakerOn}) {
    return _service.changeSpeakerMode(isSpeakerOn: isSpeakerOn);
  }
}
