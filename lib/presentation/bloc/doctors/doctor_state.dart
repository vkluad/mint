part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState.initial() = _Initial;
  const factory DoctorState.loading() = _Loading;
  const factory DoctorState.loaded(List<Doctor> doctors) = Loaded;
  const factory DoctorState.error(String error) = _Error;
}
