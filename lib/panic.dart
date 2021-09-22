library panic;

import 'dart:io';

import 'package:flutter/material.dart';

class Panic {
  static Panic? _instance;
  final GlobalKey<NavigatorState> _appKey;

  factory Panic(GlobalKey<NavigatorState> _appKey) =>
      _instance ?? Panic._(_appKey);

  Panic._(this._appKey) {
    _instance = this;
  }

  void app([panincInRelease = false, String? message]) {
    if (_appKey.currentContext != null) {
      _navigateToPanicScreen(message);
    } else {
      exit(0);
    }
  }

  void _navigateToPanicScreen(String? message) {
    Navigator.pushReplacement(
      _appKey.currentContext!,
      MaterialPageRoute<Object>(
        settings: const RouteSettings(name: '/panic'),
        builder: (context) => Container(
          color: Colors.red,
          child: Text(
            '$message',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 48,
            ),
          ),
        ),
      ),
    );
  }
}
