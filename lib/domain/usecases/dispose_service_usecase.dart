import 'package:mint/data/service/remote_agora.dart';

abstract class DisposeServiceUseCase {
  DisposeServiceUseCase();

  Future<void> call();
}

class RemoteDisposeServiceUseCase implements DisposeServiceUseCase {
  RemoteDisposeServiceUseCase(this._service);
  final RemoteAgoraService _service;

  @override
  Future<void> call() {
    return _service.dispose();
  }
}
