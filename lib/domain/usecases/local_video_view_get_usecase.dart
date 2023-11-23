import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:mint/data/service/remote_agora.dart';

abstract class GetLocalVideoViewUseCase {
  GetLocalVideoViewUseCase();

  AgoraVideoView call();
}

class RemoteGetLocalVideoViewUseCase implements GetLocalVideoViewUseCase {
  RemoteGetLocalVideoViewUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  AgoraVideoView call() {
    return _service.getLocalAgoraVideoView();
  }
}
