library panic;

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// `Panic` allows a flutter app to terminate immediately and provide feedback
/// to the caller of the app.
/// `Panic` should be used when an app reaches an unrecoverable state.
class Panic {
  static Panic? _instance;
  final GlobalKey<NavigatorState> _appKey;

  factory Panic(GlobalKey<NavigatorState> _appKey) =>
      _instance ?? Panic._(_appKey);

  Panic._(this._appKey) {
    _instance = this;
  }

  /// Terminate app immediately.
  void app([String? message]) {
    final msg = message ?? 'This is a terrible mistake!';
    if (_appKey.currentContext != null && !kReleaseMode) {
      _pushPanicScreen(msg);
    } else {
      exit(1);
    }
  }

  void _pushPanicScreen(String msg) {
    Navigator.pushReplacement(
      _appKey.currentContext!,
      MaterialPageRoute<Object>(
        settings: const RouteSettings(name: '/panic'),
        builder: (context) => Container(
          color: Colors.red,
          child: Center(
            child: Text(
              '$msg',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 48,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
