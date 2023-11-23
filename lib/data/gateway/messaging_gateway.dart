import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:mint/backbone/di.dart';
import 'package:mint/presentation/router/app_router.dart';
import 'package:path_provider/path_provider.dart';

Future<void> firebaseMessagingBackgroundHandler(
  RemoteMessage message,
) async {
  if (message.notification != null) {
    debugPrint('onBackgroundCallback');
  }
}

Future<void> handleNotificationSelectBackground(
  NotificationResponse response,
) async {}

Future<String?> _downloadAndSavePicture(String? url, String fileName) async {
  if (url == null) return null;
  final directory = await getApplicationDocumentsDirectory();
  final filePath = '${directory.path}/$fileName';
  final response = await http.get(Uri.parse(url));
  final file = File(filePath);
  await file.writeAsBytes(response.bodyBytes);
  return filePath;
}

BigPictureStyleInformation? _buildBigPictureStyleInformation(
  String title,
  String? picturePath,
  bool showBigPicture,
) {
  if (picturePath == null) return null;
  final filePath = FilePathAndroidBitmap(picturePath);
  return BigPictureStyleInformation(
    showBigPicture ? filePath : const FilePathAndroidBitmap('empty'),
    contentTitle: title,
    htmlFormatContentTitle: true,
    htmlFormatSummaryText: true,
  );
}

NotificationDetails _buildDetails(
  String title,
  String? picturePath,
  bool showBigPicture,
) {
  final androidPlatformChannelSpecifics = AndroidNotificationDetails(
    'high_importance_channel',
    'High Importance Notifications',
    channelDescription: 'This channel is used for important notifications.',
    styleInformation: _buildBigPictureStyleInformation(
      title,
      picturePath,
      showBigPicture,
    ),
    importance: Importance.max,
    priority: Priority.max,
    icon: '@mipmap/ic_launcher',
  );

  final details = NotificationDetails(
    android: androidPlatformChannelSpecifics,
  );
  return details;
}

class MessagingGateway {
  MessagingGateway();
  final AppRouter appRouter = sl<AppRouter>();

  final fltNotification = FlutterLocalNotificationsPlugin();
  static const androiInit =
      AndroidInitializationSettings('@mipmap/ic_launcher');

  static const initSetting = InitializationSettings(android: androiInit);

  static const androidDetails = AndroidNotificationDetails(
    'high_importance_channel',
    'High Importance Notifications',
    channelDescription: 'This channel is used for important notifications.',
    priority: Priority.max,
    importance: Importance.max,
  );

  static const channel = AndroidNotificationChannel(
    'high_importance_channel',
    'High Importance Notifications',
    description: 'This channel is used for important notifications.',
    importance: Importance.max,
  );

  static const generalNotificationDetails =
      NotificationDetails(android: androidDetails);

  Future<void> showMessage(
    RemoteNotification? notification,
    RemoteMessage? message,
  ) async {
    if (notification != null) {
      if (notification.android?.imageUrl != null) {
        final picturePath = await _downloadAndSavePicture(
          notification.android?.imageUrl,
          'test',
        );
        await fltNotification.show(
          notification.hashCode,
          notification.title,
          notification.body,
          _buildDetails(
            notification.title ?? 'title',
            picturePath,
            true,
          ),
        );
      } else {
        await fltNotification.show(
          notification.hashCode,
          notification.title,
          notification.body,
          generalNotificationDetails,
          payload: jsonEncode(message?.data),
        );
      }
    }
  }

  Future<void> handleNotificationSelect(NotificationResponse response) async {
    if (response.payload != null) {
      final notificationData =
          jsonDecode(response.payload!) as Map<String, dynamic>;
      if (notificationData.containsKey('bookingId')) {
        await appRouter.replace(
          ConsultationRoute(
            bookingId: notificationData['bookingId'] as String,
          ),
        );
      }
      if (notificationData.containsKey('chatId')) {
        await appRouter.navigate(
          ChatRoute(doctorId: notificationData['chatId'] as String),
        );
      }
    }
  }

  Future<void> initializeNotifications({
    required bool isNotificationAllowed,
  }) async {
    if (isNotificationAllowed) {
      await fltNotification.initialize(
        initSetting,
        onDidReceiveNotificationResponse: handleNotificationSelect,
        onDidReceiveBackgroundNotificationResponse:
            handleNotificationSelectBackground,
      );

      await fltNotification
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);

      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );

      await FirebaseMessaging.instance
          .getInitialMessage()
          .then((message) async {
        if (message?.notification != null &&
            message?.notification?.android != null) {
          debugPrint('onInitialCallback');
          final notification = message?.notification;

          await showMessage(notification, message);
        }
      });

      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
      FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
        if (message.notification != null &&
            message.notification?.android != null) {
          debugPrint('onMessageCallback');
          final notification = message.notification;
          await showMessage(notification, message);
        }
      });
      FirebaseMessaging.onMessageOpenedApp
          .listen((RemoteMessage message) async {
        if (message.data.containsKey('bookingId')) {
          await appRouter.navigate(
            ConsultationRoute(
              bookingId: message.data['bookingId'] as String,
            ),
          );
        }

        if (message.data.containsKey('chatId')) {
          await appRouter.navigate(
            ChatRoute(
              doctorId: message.data['chatId'] as String,
            ),
          );
        }
      });
    }
  }
}
