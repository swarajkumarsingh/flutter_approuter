import 'package:flutter/material.dart';

import 'package:flutter_approuter/src/messages/messages.dart';
import 'package:flutter_approuter/src/approuter/approuter_platform_interface.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class MethodChannelAppRouter extends AppRouterPlatform {
  @override
  @visibleForTesting
  void push(Widget page) {
    try {
      navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  @override
  @visibleForTesting
  void pushOffAll(Widget page) {
    try {
      navigatorKey.currentState?.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => page),
        (Route<dynamic> route) => false,
      );
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  @override
  @visibleForTesting
  void pushNamed(String routeName) {
    try {
      navigatorKey.currentState?.pushNamed(routeName);
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  @override
  @visibleForTesting
  void pop() {
    try {
      navigatorKey.currentState?.pop();
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }
}
