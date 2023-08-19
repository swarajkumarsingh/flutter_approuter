import 'package:flutter/material.dart';
import 'package:flutter_approuter/flutter_approuter.dart';

import 'package:flutter_approuter/src/messages/messages.dart';
import 'package:flutter_approuter/src/approuter/approuter_platform_interface.dart';

class MethodChannelAppRouter extends AppRouterPlatform {
  @override
  @visibleForTesting
  BuildContext? getContext() {
    try {
      return navigatorKey.currentState?.context;
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
    return null;
  }

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
  void pushAndRemoveUntil(Widget page) {
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
  void pushNamedAndRemoveUntil(String route) {
    try {
      navigatorKey.currentState?.pushNamedAndRemoveUntil(
        route,
        (Route<dynamic> route) => false,
      );
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  @override
  @visibleForTesting
  void pushReplacement(Widget page) {
    try {
      navigatorKey.currentState?.pushReplacement(MaterialPageRoute(
        builder: (context) => page,
      ));
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  @override
  @visibleForTesting
  void pushReplacementNamed(String route) {
    try {
      navigatorKey.currentState?.pushReplacementNamed(route);
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
