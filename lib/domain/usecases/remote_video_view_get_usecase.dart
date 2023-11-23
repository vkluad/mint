import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:mint/data/service/remote_agora.dart';

abstract class GetRemoteVideoViewUseCase {
  GetRemoteVideoViewUseCase();

  AgoraVideoView call(int uid);
}

class RemoteGetRemoteVideoViewUseCase implements GetRemoteVideoViewUseCase {
  RemoteGetRemoteVideoViewUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  AgoraVideoView call(int uid) {
    return _service.getRemoteAgoraVideoView(uid);
  }
}
