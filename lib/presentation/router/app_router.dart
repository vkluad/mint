import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mint/domain/entity/booking.dart';
import 'package:mint/domain/entity/doctor.dart';
import 'package:mint/presentation/page/chat/chat_list.dart';
import 'package:mint/presentation/page/chat/chat_page.dart';
import 'package:mint/presentation/page/checkout/checkout_page.dart';
import 'package:mint/presentation/page/consultations/consultation_page.dart';
import 'package:mint/presentation/page/consultations/consultation_summary_page.dart';
import 'package:mint/presentation/page/doctor_info/doctor_info_page.dart';
import 'package:mint/presentation/page/doctors/doctors_page.dart';
import 'package:mint/presentation/page/login/code_page.dart';
import 'package:mint/presentation/page/login/sign_up_page.dart';
import 'package:mint/presentation/page/media_chat/call_page.dart';
import 'package:mint/presentation/page/navigation_page.dart';
import 'package:mint/presentation/page/payment/payment_page.dart';
import 'package:mint/presentation/page/pin/pin_input_page.dart';
import 'package:mint/presentation/page/profile/edit_profile_info.dart';
import 'package:mint/presentation/page/profile/favourite_doctors_page.dart';
import 'package:mint/presentation/page/profile/notifications_page.dart';
import 'package:mint/presentation/page/profile/profile_cards_page.dart';
import 'package:mint/presentation/page/profile/profile_page.dart';
import 'package:mint/presentation/page/profile/profile_wrapper.dart';
import 'package:mint/presentation/page/profile/theme_page.dart';
import 'package:mint/presentation/page/review/thanks_screen.dart';
import 'package:mint/presentation/page/sessions/sessions_page.dart';
import 'package:mint/presentation/page/specialist_selection/specialist_selection_page.dart';
import 'package:mint/presentation/page/specialists/filter_page.dart';
import 'package:mint/presentation/page/specialists/specialists_page.dart';
import 'package:mint/presentation/page/specialists/specialists_wrapper.dart';
import 'package:mint/presentation/page/symptom/symptom_page.dart';
import 'package:mint/presentation/page/user_notification/user_notifications_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: SignUpRoute.page,
        ),
        AutoRoute(
          page: NavigationRoute.page,
          path: '/main',
          children: [
            AutoRoute(
              page: DoctorsRoute.page,
              path: 'home',
            ),
            AutoRoute(page: ChatListRoute.page, path: 'chat-list'),
            AutoRoute(
              page: SpecialistsNestedWrapperRoute.page,
              path: 'specialists',
              children: [
                AutoRoute(
                  initial: true,
                  page: SpecialistsRoute.page,
                  path: 'specialists',
                ),
                AutoRoute(page: DoctorDetailsRoute.page),
              ],
            ),
            AutoRoute(page: SessionsRoute.page, path: 'sessions'),
            AutoRoute(
              page: ProfileNestedWrapperRoute.page,
              path: 'profile',
              children: [
                AutoRoute(page: ProfileRoute.page, path: 'profile'),
                AutoRoute(page: EditProfileInfoRoute.page),
                AutoRoute(page: FavouriteDoctorsRoute.page),
                AutoRoute(page: DoctorDetailsRoute.page),
                AutoRoute(page: ThemeRoute.page),
                AutoRoute(page: NotificationSettingsRoute.page)
              ],
            ),
          ],
        ),
        AutoRoute(page: ProfileCardsRoute.page),
        AutoRoute(page: CodeRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: PinInputRoute.page),
        AutoRoute(page: ConsultationRoute.page),
        AutoRoute(page: MediaCallRoute.page),
        AutoRoute(page: ThanksRoute.page),
        AutoRoute(page: FilterRoute.page),
        AutoRoute(page: SymptomRoute.page),
        AutoRoute(page: ConsultationSummaryRoute.page),
        AutoRoute(page: SpecialistSelectionRoute.page),
        AutoRoute(page: CheckoutRoute.page),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: UserNotificationsRoute.page),
      ];
}
