import 'package:get_it/get_it.dart';
import 'package:mint/assembly/entity/booking_from_dto_factory.dart';
import 'package:mint/assembly/entity/card_from_dto_factory.dart';
import 'package:mint/assembly/entity/doctor_from_dto_factory.dart';
import 'package:mint/assembly/entity/message_from_dto_factory.dart';
import 'package:mint/assembly/entity/notification_from_dto_factory.dart';
import 'package:mint/assembly/entity/review_from_dto_factory.dart';
import 'package:mint/assembly/entity/user_from_dto_factory.dart';
import 'package:mint/assembly/factory.dart';
import 'package:mint/assembly/model/booking_factory.dart';
import 'package:mint/assembly/model/card_factory.dart';
import 'package:mint/assembly/model/chat_factory.dart';
import 'package:mint/assembly/model/doctors_factory.dart';
import 'package:mint/assembly/model/notification_factory.dart';
import 'package:mint/assembly/model/review_factory.dart';
import 'package:mint/assembly/model/user_factory.dart';
import 'package:mint/data/gateway/agora_chat_gateway.dart';
import 'package:mint/data/gateway/firebase_auth_gateway.dart';
import 'package:mint/data/gateway/firebase_booking_gateway.dart';
import 'package:mint/data/gateway/firebase_cards_gateway.dart';
import 'package:mint/data/gateway/firebase_chat_gateway.dart';
import 'package:mint/data/gateway/firebase_doctors_gateway.dart';
import 'package:mint/data/gateway/firebase_notification_gateway.dart';
import 'package:mint/data/gateway/firebase_review_gateway.dart';
import 'package:mint/data/gateway/permission_repository.dart';
import 'package:mint/data/gateway/stripe_gateway.dart';
import 'package:mint/data/gateway/theme_preference.dart';
import 'package:mint/data/model/bank_card_dto.dart';
import 'package:mint/data/model/booking_dto.dart';
import 'package:mint/data/model/doctor_dto.dart';
import 'package:mint/data/model/message_dto.dart';
import 'package:mint/data/model/notification_dto.dart';
import 'package:mint/data/model/review_dto.dart';
import 'package:mint/data/model/user_dto.dart';
import 'package:mint/data/service/firebase_auth.dart';
import 'package:mint/data/service/firebase_bookings.dart';
import 'package:mint/data/service/firebase_cards.dart';
import 'package:mint/data/service/firebase_chat.dart';
import 'package:mint/data/service/firebase_doctors.dart';
import 'package:mint/data/service/firebase_notification.dart';
import 'package:mint/data/service/firebase_review.dart';
import 'package:mint/data/service/firebase_user_pin.dart';
import 'package:mint/data/service/local_permission.dart';
import 'package:mint/data/service/local_preferences.dart';
import 'package:mint/data/service/remote_agora.dart';
import 'package:mint/data/service/stripe.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/card.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/domain/entity/message.dart';
import 'package:mint/domain/entity/notification.dart';
import 'package:mint/domain/entity/review.dart';
import 'package:mint/domain/entity/user.dart' as user_entity;
import 'package:mint/domain/services/auth_service.dart';
import 'package:mint/domain/services/booking_service.dart';
import 'package:mint/domain/services/cards_service.dart';
import 'package:mint/domain/services/chat_service.dart';
import 'package:mint/domain/services/doctors_service.dart';
import 'package:mint/domain/services/permission_service.dart';
import 'package:mint/domain/services/pin_service.dart';
import 'package:mint/domain/services/review_service.dart';
import 'package:mint/domain/services/stripe_service.dart';
import 'package:mint/domain/services/theme_notifications_service.dart';
import 'package:mint/domain/services/user_notifications_service.dart';
import 'package:mint/domain/usecases/change_speaker_mode_usecase.dart';
import 'package:mint/domain/usecases/create_booking_usecase.dart';
import 'package:mint/domain/usecases/create_card_usecase.dart';
import 'package:mint/domain/usecases/create_intent_usecase.dart';

import 'package:mint/domain/usecases/dispose_service_usecase.dart';
import 'package:mint/domain/usecases/get_bookings_usecase.dart';
import 'package:mint/domain/usecases/get_cards_usecase.dart';
import 'package:mint/domain/usecases/get_currect_user_id_usecase.dart';
import 'package:mint/domain/usecases/get_doctors_usecase.dart';
import 'package:mint/domain/usecases/get_messages_usecase.dart';
import 'package:mint/domain/usecases/get_notification_permission.dart';
import 'package:mint/domain/usecases/get_notification_status_usecase.dart';
import 'package:mint/domain/usecases/get_permission_usecase.dart';
import 'package:mint/domain/usecases/get_reviews_usecase.dart';
import 'package:mint/domain/usecases/get_theme_status_usecase.dart';

import 'package:mint/domain/usecases/get_user_notifications_usecase.dart';
import 'package:mint/domain/usecases/get_user_pin_usecase.dart';
import 'package:mint/domain/usecases/initialize_service_usecase.dart';
import 'package:mint/domain/usecases/leave_call_usecase.dart';
import 'package:mint/domain/usecases/local_video_view_get_usecase.dart';
import 'package:mint/domain/usecases/mark_as_favorite_usecase.dart';
import 'package:mint/domain/usecases/mute_microphone_usecase.dart';
import 'package:mint/domain/usecases/mute_video_usecase.dart';
import 'package:mint/domain/usecases/remote_video_view_get_usecase.dart';
import 'package:mint/domain/usecases/remove_all_notifications_usecase.dart';
import 'package:mint/domain/usecases/remove_booking_usecase.dart';
import 'package:mint/domain/usecases/remove_card_usecase.dart';
import 'package:mint/domain/usecases/remove_from_favourites_usecase.dart';
import 'package:mint/domain/usecases/request_notification_usecase.dart';
import 'package:mint/domain/usecases/request_permission_usecase.dart';
import 'package:mint/domain/usecases/send_image_message_usecase.dart';
import 'package:mint/domain/usecases/send_message_usecase.dart';
import 'package:mint/domain/usecases/send_review_usecase.dart';
import 'package:mint/domain/usecases/set_notification_status_usecase.dart';
import 'package:mint/domain/usecases/set_profile_photo_usecase.dart';
import 'package:mint/domain/usecases/set_theme_status_usecase.dart';
import 'package:mint/domain/usecases/set_user_pin_usecase.dart';
import 'package:mint/domain/usecases/sign_out_usecase.dart';
import 'package:mint/domain/usecases/sign_up_usecase.dart';
import 'package:mint/domain/usecases/switch_camera_usecase.dart';
import 'package:mint/domain/usecases/update_booking_status.dart';
import 'package:mint/domain/usecases/update_msg_status_usecase.dart';
import 'package:mint/domain/usecases/update_time_usecase.dart';
import 'package:mint/domain/usecases/update_user_date.dart';
import 'package:mint/domain/usecases/update_user_first_name.dart';
import 'package:mint/domain/usecases/update_user_last_name.dart';
import 'package:mint/domain/usecases/update_user_notification_status_usecase.dart';
import 'package:mint/domain/usecases/verify_otp_usecase.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/booking/booking_bloc.dart';
import 'package:mint/presentation/bloc/card/cards_bloc.dart';
import 'package:mint/presentation/bloc/chat/chat_bloc.dart';

import 'package:mint/presentation/bloc/doctors/doctor_bloc.dart';
import 'package:mint/presentation/bloc/filter/filter_bloc.dart';
import 'package:mint/presentation/bloc/media_chat/media_chat_bloc.dart';
import 'package:mint/presentation/bloc/notification/notification_bloc.dart';
import 'package:mint/presentation/bloc/payment/payment_bloc.dart';
import 'package:mint/presentation/bloc/permission/permission_bloc.dart';
import 'package:mint/presentation/bloc/pin/pin_bloc.dart';
import 'package:mint/presentation/bloc/review/review_bloc.dart';
import 'package:mint/presentation/bloc/theme/theme_bloc.dart';
import 'package:mint/presentation/bloc/user_notification/user_notification_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';

final GetIt sl = GetIt.instance;
Future<void> init() async {
  _registerGateways();
  sl.registerLazySingleton<AppRouter>(AppRouter.new);
  _registerServices();
  _registerFactories();
  _registerUseCases();
  _registerBlocs();
}

void _registerServices() {
  sl
    ..registerLazySingleton<AuthenticationService>(
      () => FirebaseAuthentication(sl.get()),
    )
    ..registerLazySingleton<RemoteAgoraService>(
      () => RemoteAgoraService(sl.get()),
    )
    ..registerLazySingleton<StripeService>(
      () => RemoteStripeService(sl.get()),
    )
    ..registerLazySingleton<PinService>(
      () => FirebaseUserPinService(sl.get()),
    )
    ..registerLazySingleton<BookingService>(
      () => FirebaseBookingsService(sl.get()),
    )
    ..registerLazySingleton<DoctorService>(
      () => FirebaseDoctorsService(sl.get()),
    )
    ..registerLazySingleton<ChatService>(
      () => FirebaseChatService(sl.get()),
    )
    ..registerLazySingleton<ReviewService>(
      () => FirebaseReviewService(sl.get()),
    )
    ..registerLazySingleton<CardsService>(
      () => FirebaseCardsService(sl.get()),
    )
    ..registerLazySingleton<PermissionService>(
      () => LocalPermissionService(sl.get()),
    )
    ..registerLazySingleton<UserNotificationsService>(
      () => FirebaseUserNotificationsService(sl.get()),
    )
    ..registerLazySingleton<ThemeNotificationService>(
      () => LocalThemeNotificationPreferences(sl.get()),
    );
}

void _registerGateways() {
  sl
    ..registerLazySingleton<FirebaseAuthGateway>(
      () => FirebaseAuthGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<FirebaseBookingGateway>(
      () => FirebaseBookingGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<StripeGateway>(
      StripeGateway.new,
    )
    ..registerLazySingleton<PreferencesRepository>(
      PreferencesRepository.new,
    )
    ..registerLazySingleton<FirebaseChatGateway>(
      () => FirebaseChatGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<FirebaseReviewGateway>(
      () => FirebaseReviewGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<FirebaseNotificationGateway>(
      () => FirebaseNotificationGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<FirebaseDoctorsGateway>(
      () => FirebaseDoctorsGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<FirebaseCardsGateway>(
      () => FirebaseCardsGateway(sl.get(), sl.get()),
    )
    ..registerLazySingleton<PermissionRepository>(
      PermissionRepository.new,
    )
    ..registerLazySingleton<AgoraChatGateway>(
      AgoraChatGateway.new,
    );
}

void _registerFactories() {
  sl
    ..registerLazySingleton<Factory<Doctor, DoctorDto>>(
      DoctorFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<UserNotification, UserNotificationDto>>(
      UserNotificationFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<DoctorDto, Map<String, dynamic>>>(
      DoctorDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<UserNotificationDto, Map<String, dynamic>>>(
      UserNotificationDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<user_entity.User, UserDto>>(
      UserFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<UserDto, Map<String, dynamic>>>(
      UserDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<BookingDto, Map<String, dynamic>>>(
      BookingDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<Booking, BookingDto>>(
      BookingFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<BankCardDto, Map<String, dynamic>>>(
      CardDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<BankCard, BankCardDto>>(
      CardFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<Message, MessageDto>>(
      MessageFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<MessageDto, Map<String, dynamic>>>(
      MessageDtoFromJsonFactory.new,
    )
    ..registerLazySingleton<Factory<Review, ReviewDto>>(
      ReviewFromDtoFactory.new,
    )
    ..registerLazySingleton<Factory<ReviewDto, Map<String, dynamic>>>(
      ReviewDtoFromJsonFactory.new,
    );
}

void _registerUseCases() {
  sl
    ..registerLazySingleton<SignUpUseCase>(
      () => FirestoreSignUpUseCase(sl.get()),
    )
    ..registerLazySingleton<VerifyOtpUseCase>(
      () => FirestoreVerifyOtpUseCase(sl.get()),
    )
    ..registerLazySingleton<CreateIntentUseCase>(
      () => StripeCreateIntentUseCase(sl.get()),
    )
    ..registerLazySingleton<SignOutUseCase>(
      () => FirestoreSignOutUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateUserDateUseCase>(
      () => FirestoreUpdateUserDateUseCase(sl.get()),
    )
    ..registerLazySingleton<SetProfilePhotoUseCase>(
      () => FirestoreSetProfilePhotoUseCase(sl.get()),
    )
    ..registerLazySingleton<GetUserNotificationsUseCase>(
      () => FirestoreGetUserNotificationsUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateUserNotificationStatusUseCase>(
      () => FirestoreUpdateUserNotificationStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<RemoveNotificationsUseCase>(
      () => FirestoreRemoveNotificationsUseCase(sl.get()),
    )
    ..registerLazySingleton<GetUserPinUseCase>(
      () => FirestoreGetUserPinUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateUserFirstNameUseCase>(
      () => FirestoreUpdateUserFirstNameUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateUserLastNameUseCase>(
      () => FirestoreUpdateUserLastNameUseCase(sl.get()),
    )
    ..registerLazySingleton<GetDoctorsUseCase>(
      () => FirestoreGetDoctorsUseCase(sl.get()),
    )
    ..registerLazySingleton<MarkAsFavouriteUseCase>(
      () => FirestoreMarkAsFavouriteUseCase(sl.get()),
    )
    ..registerLazySingleton<RemoveFromFavouritesUseCase>(
      () => FirestoreRemoveFromFavouritesUseCase(sl.get()),
    )
    ..registerLazySingleton<GetChatPermissionUseCase>(
      () => LocalGetPermissionUseCase(sl.get()),
    )
    ..registerLazySingleton<RequestChatPermissionUseCase>(
      () => LocalRequestPermissionUseCase(sl.get()),
    )
    ..registerLazySingleton<RequestNotificationPermissionUseCase>(
      () => LocalRequestNotificationUseCase(sl.get()),
    )
    ..registerLazySingleton<GetNotificationPermissionUseCase>(
      () => LocalGetNotificationUseCase(sl.get()),
    )
    ..registerLazySingleton<GetBookingsUseCase>(
      () => FirestoreGetBookingsUseCase(sl.get()),
    )
    ..registerLazySingleton<SetUserPinUseCase>(
      () => FirestoreSetUserPinUseCase(sl.get()),
    )
    ..registerLazySingleton<GetNotificationStatusUseCase>(
      () => LocalGetNotificationStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<SetNotificationStatusUseCase>(
      () => LocalSetNotificationStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<SetThemeStatusUseCase>(
      () => LocalSetThemeStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<GetThemeStatusUseCase>(
      () => LocalGetThemeStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<CreateBookingUseCase>(
      () => FirestoreCreateBookingUseCase(sl.get()),
    )
    ..registerLazySingleton<RemoveBookingUseCase>(
      () => FirestoreRemoveBookingUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateBookingTimeUseCase>(
      () => FirestoreUpdateBookingTimeUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateBookingStatusUseCase>(
      () => FirestoreUpdateBookingStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<GetCardsUseCase>(
      () => FirestoreGetCardsUseCase(sl.get()),
    )
    ..registerLazySingleton<CreateCardUseCase>(
      () => FirestoreCreateCardUseCase(sl.get()),
    )
    ..registerLazySingleton<RemoveCardUseCase>(
      () => FirestoreRemoveCardUseCase(sl.get()),
    )
    //agora
    ..registerLazySingleton<InitializeServiceUseCase>(
      () => RemoteInitializeServiceUseCase(sl.get()),
    )
    ..registerLazySingleton<LeaveCallUseCase>(
      () => RemoteLeaveCallUseCase(sl.get()),
    )
    ..registerLazySingleton<DisposeServiceUseCase>(
      () => RemoteDisposeServiceUseCase(sl.get()),
    )
    ..registerLazySingleton<SwitchCameraUseCase>(
      () => RemoteSwitchCameraUseCase(sl.get()),
    )
    ..registerLazySingleton<ChangeSpeakerModeUseCase>(
      () => RemoteChangeSpeakerModeUseCase(sl.get()),
    )
    ..registerLazySingleton<MuteMicrophoneUseCase>(
      () => RemoteMuteMicrophoneUseCase(sl.get()),
    )
    ..registerLazySingleton<GetLocalVideoViewUseCase>(
      () => RemoteGetLocalVideoViewUseCase(sl.get()),
    )
    ..registerLazySingleton<GetRemoteVideoViewUseCase>(
      () => RemoteGetRemoteVideoViewUseCase(sl.get()),
    )
    ..registerLazySingleton<MuteVideoUseCase>(
      () => RemoteMuteVideoUseCase(sl.get()),
    )
    //chat
    ..registerLazySingleton<GetMessagesUseCase>(
      () => FirestoreGetMessagesUseCase(sl.get()),
    )
    ..registerLazySingleton<SendMessageUseCase>(
      () => FirestoreSendMessageUseCase(sl.get()),
    )
    ..registerLazySingleton<UpdateMessageStatusUseCase>(
      () => FirestoreUpdateMessageStatusUseCase(sl.get()),
    )
    ..registerLazySingleton<SendImageMessageUseCase>(
      () => FirestoreSendImageMessageUseCase(sl.get()),
    )
    ..registerLazySingleton<GetCurrentUserUseCase>(
      () => FirestoreGetCurrentUserUseCase(sl.get()),
    )
    ..registerLazySingleton<GetReviewsUseCase>(
      () => FirestoreGetReviewsUseCase(sl.get()),
    )
    ..registerLazySingleton<SendReviewUseCase>(
      () => FirestoreSendReviewUseCase(sl.get()),
    );
}

void _registerBlocs() {
  sl
    ..registerLazySingleton<AuthBloc>(
      () => AuthBloc(
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
      ),
    )
    ..registerLazySingleton<ChatBloc>(
      () => ChatBloc(sl.get(), sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<ReviewBloc>(
      () => ReviewBloc(sl.get(), sl.get()),
    )
    ..registerLazySingleton<CardsBloc>(
      () => CardsBloc(sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<PinBloc>(
      () => PinBloc(sl.get(), sl.get()),
    )
    ..registerLazySingleton<PaymentBloc>(
      () => PaymentBloc(sl.get()),
    )
    ..registerLazySingleton<UserNotificationBloc>(
      () => UserNotificationBloc(sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<PermissionBloc>(
      () => PermissionBloc(sl.get(), sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<FilterBloc>(
      () => FilterBloc(
        sl.get(),
      ),
    )
    ..registerLazySingleton<MediaChatBloc>(
      () => MediaChatBloc(
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
        sl.get(),
      ),
    )
    ..registerLazySingleton<BookingBloc>(
      () => BookingBloc(sl.get(), sl.get(), sl.get(), sl.get(), sl.get()),
    )
    ..registerLazySingleton<NotificationBloc>(
      () => NotificationBloc(sl.get(), sl.get()),
    )
    ..registerLazySingleton<ThemeBloc>(() => ThemeBloc(sl.get(), sl.get()))
    ..registerLazySingleton<DoctorBloc>(
      () => DoctorBloc(sl.get(), sl.get(), sl.get()),
    );
}
