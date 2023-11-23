import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:mint/backbone/di.dart' as di;
import 'package:mint/backbone/di.dart';
import 'package:mint/backbone/observer.dart';
import 'package:mint/bootstrap.dart';
import 'package:mint/data/gateway/messaging_gateway.dart';
import 'package:mint/firebase_options.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/auth/auth_bloc.dart';
import 'package:mint/presentation/bloc/notification/notification_bloc.dart';
import 'package:mint/presentation/bloc/permission/permission_bloc.dart';
import 'package:mint/presentation/bloc/pin/pin_bloc.dart';
import 'package:mint/presentation/bloc/theme/theme_bloc.dart';
import 'package:mint/presentation/router/app_router.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );

  const screenSize = Size(375, 812);
  await ScreenUtil.ensureScreenSize();
  await dotenv.load();

  await bootstrap(() async {
    WidgetsFlutterBinding.ensureInitialized();
    final observer = AppLifecycleObserver();
    await observer.initialize();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Stripe.publishableKey = dotenv.env['publishableKey'] ?? '';
    await Stripe.instance.applySettings();
    await di.init();
    final appRouter = sl<AppRouter>();
    final pinBloc = sl<PinBloc>();
    final authBloc = sl<AuthBloc>();
    FirebaseAuth.instance.authStateChanges().listen((User? user) async {
      if (user != null) {
        authBloc.add(const GetCurrentUserIdEvent());
        pinBloc.add(const GetUserPinEvent());
        pinBloc.stream.listen((state) {
          appRouter.navigate(PinInputRoute(pin: state.userPin));
        });
        await appRouter.navigate(const NavigationRoute());
      } else {
        await appRouter.navigate(const SignUpRoute());
      }
    });
    final gateway = MessagingGateway();

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (exception, stackTrace) {
      FirebaseCrashlytics.instance.recordError(exception, stackTrace);
      return true;
    };

    final bloc = sl<ThemeBloc>()..add(const GetThemeEvent());
    final prbloc = sl<PermissionBloc>();
    final notificationBloc = sl<NotificationBloc>();

    prbloc..add(const GetChatPermissionEvent())
    ..add(const RequestNotificationPermissionEvent());

    notificationBloc.add(const GetNotificationStatusEvent());

    return BlocListener<NotificationBloc, NotificationState>(
      bloc: notificationBloc,
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loaded: (isNotificationAllowed) async {
            if (isNotificationAllowed) {
              await gateway.initializeNotifications(
                isNotificationAllowed: isNotificationAllowed,
              );
            }
          },
        );
      },
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: screenSize,
        builder: (context, child) {
          return BlocBuilder<ThemeBloc, ThemeState>(
            bloc: bloc,
            builder: (context, state) {
              return state.when(
                initial: () {
                  return const SizedBox.shrink();
                },
                appTheme: (isDarkTheme, themeData) {
                  return MaterialApp.router(
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    theme: themeData,
                    routerDelegate: appRouter.delegate(),
                    routeInformationParser: appRouter.defaultRouteParser(),
                  );
                },
              );
            },
          );
        },
      ),
    );
  });
}
