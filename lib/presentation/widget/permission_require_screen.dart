import 'package:flutter/material.dart';
import 'package:mint/backbone/di.dart';
import 'package:mint/l10n/l10n.dart';
import 'package:mint/presentation/bloc/permission/permission_bloc.dart';
import 'package:mint/theme/palette.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionWaitingScreen extends StatefulWidget {
  const PermissionWaitingScreen({super.key});

  @override
  State<PermissionWaitingScreen> createState() =>
      _PermissionWaitingScreenState();
}

class _PermissionWaitingScreenState extends State<PermissionWaitingScreen> {
  final _bloc = sl<PermissionBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RefreshIndicator(
          onRefresh: () async {
            _bloc.add(const GetChatPermissionEvent());
            _bloc.add(const GetNotificationPermissionEvent());
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)!.allowMic,
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
              TextButton(
                onPressed: openAppSettings,
                child: Text(
                  AppLocalizations.of(context)!.openAppSettings,
                  style: const TextStyle(color: Palette.mainBlue),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
