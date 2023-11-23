import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLifecycleObserver with WidgetsBindingObserver {
  Future<void> initialize() async {
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
    }
  }
}
