part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signUpWithNumber(String phoneNumber) =
      SignUpWithNumberEvent;
  const factory AuthEvent.verifyOtp(String userOtp, String phoneNumber) =
      VerifyOtpEvent;
  const factory AuthEvent.signOut() = SignOutEvent;
  const factory AuthEvent.getCurrentUserId() = GetCurrentUserIdEvent;
  const factory AuthEvent.updateUserDate(DateTime date) = UpdateUserDateEvent;
  const factory AuthEvent.updateUserFirstName(String firstName) =
      UpdateUserFirstNameEvent;
  const factory AuthEvent.updateUserLastName(String lastName) =
      UpdateUserLastNameEvent;

  const factory AuthEvent.setProfilePhoto(File file) = SetProfilePhotoEvent;
}
