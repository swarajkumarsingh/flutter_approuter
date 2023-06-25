import 'package:flutter/material.dart';
import 'package:flutter_approuter/src/approuter/approuter_platform_interface.dart';

final appRouter = _AppRouter();

// Step 1: MaterialApp(
// navigatorKey: navigatorKey,

// Usage --> () => appRouter.push(HomeScreen());

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
    AppRouterPlatform.instance.push(page);
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
    AppRouterPlatform.instance.pushOffAll(page);
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
    AppRouterPlatform.instance.pushNamed(routeName);
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
    AppRouterPlatform.instance.pop();
  }
}
