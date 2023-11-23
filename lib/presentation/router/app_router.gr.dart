// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ChatListRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatListPage(),
      );
    },
    ChatRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChatRouteArgs>(
          orElse: () =>
              ChatRouteArgs(doctorId: pathParams.getString('doctorId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChatPage(
          doctorId: args.doctorId,
          key: args.key,
        ),
      );
    },
    CheckoutRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CheckoutPage(
          doctor: args.doctor,
          plannedDate: args.plannedDate,
          description: args.description,
          key: args.key,
        ),
      );
    },
    CodeRoute.name: (routeData) {
      final args = routeData.argsAs<CodeRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CodePage(
          phoneNumber: args.phoneNumber,
          key: args.key,
        ),
      );
    },
    ConsultationRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ConsultationRouteArgs>(
          orElse: () => ConsultationRouteArgs(
              bookingId: pathParams.getString('bookingId')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConsultationPage(
          bookingId: args.bookingId,
          key: args.key,
        ),
      );
    },
    ConsultationSummaryRoute.name: (routeData) {
      final args = routeData.argsAs<ConsultationSummaryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ConsultationSummaryPage(
          doctor: args.doctor,
          plannedDate: args.plannedDate,
          key: args.key,
        ),
      );
    },
    DoctorDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DoctorDetailsPage(
          doctor: args.doctor,
          key: args.key,
          callback: args.callback,
        ),
      );
    },
    DoctorsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DoctorsPage(),
      );
    },
    EditProfileInfoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const EditProfileInfoPage(),
      );
    },
    FavouriteDoctorsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FavouriteDoctorsPage(),
      );
    },
    FilterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FilterPage(),
      );
    },
    MediaCallRoute.name: (routeData) {
      final args = routeData.argsAs<MediaCallRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MediaCallPage(
          doctor: args.doctor,
          isVideoCall: args.isVideoCall,
          booking: args.booking,
          key: args.key,
        ),
      );
    },
    NavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NavigationPage(),
      );
    },
    NotificationSettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NotificationSettingsPage(),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PaymentPage(
          doctor: args.doctor,
          plannedDate: args.plannedDate,
          description: args.description,
          key: args.key,
        ),
      );
    },
    PinInputRoute.name: (routeData) {
      final args = routeData.argsAs<PinInputRouteArgs>(
          orElse: () => const PinInputRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PinInputPage(
          key: args.key,
          pin: args.pin,
        ),
      );
    },
    ProfileCardsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileCardsPage(),
      );
    },
    ProfileNestedWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileNestedWrapperPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    SessionsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SessionsPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    SpecialistSelectionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpecialistSelectionPage(),
      );
    },
    SpecialistsNestedWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpecialistsNestedWrapperPage(),
      );
    },
    SpecialistsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SpecialistsPage(),
      );
    },
    SymptomRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SymptomPage(),
      );
    },
    ThanksRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThanksPage(),
      );
    },
    ThemeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ThemePage(),
      );
    },
    UserNotificationsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserNotificationsPage(),
      );
    },
  };
}

/// generated route for
/// [ChatListPage]
class ChatListRoute extends PageRouteInfo<void> {
  const ChatListRoute({List<PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    required String doctorId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            doctorId: doctorId,
            key: key,
          ),
          rawPathParams: {'doctorId': doctorId},
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<ChatRouteArgs> page = PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    required this.doctorId,
    this.key,
  });

  final String doctorId;

  final Key? key;

  @override
  String toString() {
    return 'ChatRouteArgs{doctorId: $doctorId, key: $key}';
  }
}

/// generated route for
/// [CheckoutPage]
class CheckoutRoute extends PageRouteInfo<CheckoutRouteArgs> {
  CheckoutRoute({
    required Doctor doctor,
    required DateTime plannedDate,
    String? description,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CheckoutRoute.name,
          args: CheckoutRouteArgs(
            doctor: doctor,
            plannedDate: plannedDate,
            description: description,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CheckoutRoute';

  static const PageInfo<CheckoutRouteArgs> page =
      PageInfo<CheckoutRouteArgs>(name);
}

class CheckoutRouteArgs {
  const CheckoutRouteArgs({
    required this.doctor,
    required this.plannedDate,
    this.description,
    this.key,
  });

  final Doctor doctor;

  final DateTime plannedDate;

  final String? description;

  final Key? key;

  @override
  String toString() {
    return 'CheckoutRouteArgs{doctor: $doctor, plannedDate: $plannedDate, description: $description, key: $key}';
  }
}

/// generated route for
/// [CodePage]
class CodeRoute extends PageRouteInfo<CodeRouteArgs> {
  CodeRoute({
    required String phoneNumber,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CodeRoute.name,
          args: CodeRouteArgs(
            phoneNumber: phoneNumber,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CodeRoute';

  static const PageInfo<CodeRouteArgs> page = PageInfo<CodeRouteArgs>(name);
}

class CodeRouteArgs {
  const CodeRouteArgs({
    required this.phoneNumber,
    this.key,
  });

  final String phoneNumber;

  final Key? key;

  @override
  String toString() {
    return 'CodeRouteArgs{phoneNumber: $phoneNumber, key: $key}';
  }
}

/// generated route for
/// [ConsultationPage]
class ConsultationRoute extends PageRouteInfo<ConsultationRouteArgs> {
  ConsultationRoute({
    required String bookingId,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ConsultationRoute.name,
          args: ConsultationRouteArgs(
            bookingId: bookingId,
            key: key,
          ),
          rawPathParams: {'bookingId': bookingId},
          initialChildren: children,
        );

  static const String name = 'ConsultationRoute';

  static const PageInfo<ConsultationRouteArgs> page =
      PageInfo<ConsultationRouteArgs>(name);
}

class ConsultationRouteArgs {
  const ConsultationRouteArgs({
    required this.bookingId,
    this.key,
  });

  final String bookingId;

  final Key? key;

  @override
  String toString() {
    return 'ConsultationRouteArgs{bookingId: $bookingId, key: $key}';
  }
}

/// generated route for
/// [ConsultationSummaryPage]
class ConsultationSummaryRoute
    extends PageRouteInfo<ConsultationSummaryRouteArgs> {
  ConsultationSummaryRoute({
    required Doctor doctor,
    required DateTime plannedDate,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ConsultationSummaryRoute.name,
          args: ConsultationSummaryRouteArgs(
            doctor: doctor,
            plannedDate: plannedDate,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ConsultationSummaryRoute';

  static const PageInfo<ConsultationSummaryRouteArgs> page =
      PageInfo<ConsultationSummaryRouteArgs>(name);
}

class ConsultationSummaryRouteArgs {
  const ConsultationSummaryRouteArgs({
    required this.doctor,
    required this.plannedDate,
    this.key,
  });

  final Doctor doctor;

  final DateTime plannedDate;

  final Key? key;

  @override
  String toString() {
    return 'ConsultationSummaryRouteArgs{doctor: $doctor, plannedDate: $plannedDate, key: $key}';
  }
}

/// generated route for
/// [DoctorDetailsPage]
class DoctorDetailsRoute extends PageRouteInfo<DoctorDetailsRouteArgs> {
  DoctorDetailsRoute({
    required Doctor doctor,
    Key? key,
    void Function()? callback,
    List<PageRouteInfo>? children,
  }) : super(
          DoctorDetailsRoute.name,
          args: DoctorDetailsRouteArgs(
            doctor: doctor,
            key: key,
            callback: callback,
          ),
          initialChildren: children,
        );

  static const String name = 'DoctorDetailsRoute';

  static const PageInfo<DoctorDetailsRouteArgs> page =
      PageInfo<DoctorDetailsRouteArgs>(name);
}

class DoctorDetailsRouteArgs {
  const DoctorDetailsRouteArgs({
    required this.doctor,
    this.key,
    this.callback,
  });

  final Doctor doctor;

  final Key? key;

  final void Function()? callback;

  @override
  String toString() {
    return 'DoctorDetailsRouteArgs{doctor: $doctor, key: $key, callback: $callback}';
  }
}

/// generated route for
/// [DoctorsPage]
class DoctorsRoute extends PageRouteInfo<void> {
  const DoctorsRoute({List<PageRouteInfo>? children})
      : super(
          DoctorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditProfileInfoPage]
class EditProfileInfoRoute extends PageRouteInfo<void> {
  const EditProfileInfoRoute({List<PageRouteInfo>? children})
      : super(
          EditProfileInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileInfoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FavouriteDoctorsPage]
class FavouriteDoctorsRoute extends PageRouteInfo<void> {
  const FavouriteDoctorsRoute({List<PageRouteInfo>? children})
      : super(
          FavouriteDoctorsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavouriteDoctorsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FilterPage]
class FilterRoute extends PageRouteInfo<void> {
  const FilterRoute({List<PageRouteInfo>? children})
      : super(
          FilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'FilterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MediaCallPage]
class MediaCallRoute extends PageRouteInfo<MediaCallRouteArgs> {
  MediaCallRoute({
    required Doctor doctor,
    required bool isVideoCall,
    required Booking booking,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MediaCallRoute.name,
          args: MediaCallRouteArgs(
            doctor: doctor,
            isVideoCall: isVideoCall,
            booking: booking,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MediaCallRoute';

  static const PageInfo<MediaCallRouteArgs> page =
      PageInfo<MediaCallRouteArgs>(name);
}

class MediaCallRouteArgs {
  const MediaCallRouteArgs({
    required this.doctor,
    required this.isVideoCall,
    required this.booking,
    this.key,
  });

  final Doctor doctor;

  final bool isVideoCall;

  final Booking booking;

  final Key? key;

  @override
  String toString() {
    return 'MediaCallRouteArgs{doctor: $doctor, isVideoCall: $isVideoCall, booking: $booking, key: $key}';
  }
}

/// generated route for
/// [NavigationPage]
class NavigationRoute extends PageRouteInfo<void> {
  const NavigationRoute({List<PageRouteInfo>? children})
      : super(
          NavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NotificationSettingsPage]
class NotificationSettingsRoute extends PageRouteInfo<void> {
  const NotificationSettingsRoute({List<PageRouteInfo>? children})
      : super(
          NotificationSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationSettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentPage]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    required Doctor doctor,
    required DateTime plannedDate,
    String? description,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            doctor: doctor,
            plannedDate: plannedDate,
            description: description,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    required this.doctor,
    required this.plannedDate,
    this.description,
    this.key,
  });

  final Doctor doctor;

  final DateTime plannedDate;

  final String? description;

  final Key? key;

  @override
  String toString() {
    return 'PaymentRouteArgs{doctor: $doctor, plannedDate: $plannedDate, description: $description, key: $key}';
  }
}

/// generated route for
/// [PinInputPage]
class PinInputRoute extends PageRouteInfo<PinInputRouteArgs> {
  PinInputRoute({
    Key? key,
    String? pin,
    List<PageRouteInfo>? children,
  }) : super(
          PinInputRoute.name,
          args: PinInputRouteArgs(
            key: key,
            pin: pin,
          ),
          initialChildren: children,
        );

  static const String name = 'PinInputRoute';

  static const PageInfo<PinInputRouteArgs> page =
      PageInfo<PinInputRouteArgs>(name);
}

class PinInputRouteArgs {
  const PinInputRouteArgs({
    this.key,
    this.pin,
  });

  final Key? key;

  final String? pin;

  @override
  String toString() {
    return 'PinInputRouteArgs{key: $key, pin: $pin}';
  }
}

/// generated route for
/// [ProfileCardsPage]
class ProfileCardsRoute extends PageRouteInfo<void> {
  const ProfileCardsRoute({List<PageRouteInfo>? children})
      : super(
          ProfileCardsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileCardsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileNestedWrapperPage]
class ProfileNestedWrapperRoute extends PageRouteInfo<void> {
  const ProfileNestedWrapperRoute({List<PageRouteInfo>? children})
      : super(
          ProfileNestedWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileNestedWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SessionsPage]
class SessionsRoute extends PageRouteInfo<void> {
  const SessionsRoute({List<PageRouteInfo>? children})
      : super(
          SessionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SessionsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpecialistSelectionPage]
class SpecialistSelectionRoute extends PageRouteInfo<void> {
  const SpecialistSelectionRoute({List<PageRouteInfo>? children})
      : super(
          SpecialistSelectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecialistSelectionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpecialistsNestedWrapperPage]
class SpecialistsNestedWrapperRoute extends PageRouteInfo<void> {
  const SpecialistsNestedWrapperRoute({List<PageRouteInfo>? children})
      : super(
          SpecialistsNestedWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecialistsNestedWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SpecialistsPage]
class SpecialistsRoute extends PageRouteInfo<void> {
  const SpecialistsRoute({List<PageRouteInfo>? children})
      : super(
          SpecialistsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SpecialistsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SymptomPage]
class SymptomRoute extends PageRouteInfo<void> {
  const SymptomRoute({List<PageRouteInfo>? children})
      : super(
          SymptomRoute.name,
          initialChildren: children,
        );

  static const String name = 'SymptomRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThanksPage]
class ThanksRoute extends PageRouteInfo<void> {
  const ThanksRoute({List<PageRouteInfo>? children})
      : super(
          ThanksRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThanksRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ThemePage]
class ThemeRoute extends PageRouteInfo<void> {
  const ThemeRoute({List<PageRouteInfo>? children})
      : super(
          ThemeRoute.name,
          initialChildren: children,
        );

  static const String name = 'ThemeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserNotificationsPage]
class UserNotificationsRoute extends PageRouteInfo<void> {
  const UserNotificationsRoute({List<PageRouteInfo>? children})
      : super(
          UserNotificationsRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserNotificationsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
