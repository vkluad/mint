part of 'doctor_bloc.dart';

@freezed
class DoctorEvent with _$DoctorEvent {
  const factory DoctorEvent.getDoctors() = GetDoctorsEvent;
  const factory DoctorEvent.markAsFavourite(String doctorId) =
      MarkAsFavouriteEvent;
  const factory DoctorEvent.removeFromFavourites(
    String doctorId,
  ) = RemoveFromFavouritesEvent;
}
