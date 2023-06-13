import 'package:flutter/material.dart';
import 'package:flutter_approuter/src/messages/messages.dart';

final navigatorKey = GlobalKey<NavigatorState>();

// Step 1: MaterialApp(
// navigatorKey: navigatorKey,

// Usage --> () => AppRouter.pushNamed("/home-screen")

final appRouter = _AppRouter();

class _AppRouter {
  /// [push]
  ///
  /// [Description]: Push to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to push
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// push(HomeScreen());
  /// ```
  void push(Widget page) {
    try {
      navigatorKey.currentState?.push(
        MaterialPageRoute(builder: (_) => page),
      );
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  /// [pushOffAll]
  ///
  /// [Description]: pushOffAll to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pushOffAll
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// push(HomeScreen());
  /// ```
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

  /// [pushNamed]
  ///
  /// [Description]: pushNamed to different screen without BuildContext
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pushNamed
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// pushNamed(HomeScreen());
  /// ```
  void pushNamed(String routeName) {
    try {
      navigatorKey.currentState?.pushNamed(routeName);
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }

  /// [pop]
  ///
  /// [Description]: pop screen (jump back to previous screen)
  ///
  /// [Parameters]:
  /// - [Widget page]: Page to pop
  ///    ...
  ///
  /// [Return Value]: null
  ///
  /// [Example Usage]:
  /// ```dart
  /// pop(HomeScreen());
  /// ```
  void pop() {
    try {
      navigatorKey.currentState?.pop();
    } catch (e, stackTrace) {
      message.throwError(e: e, stackTrace: stackTrace);
    }
  }
}
