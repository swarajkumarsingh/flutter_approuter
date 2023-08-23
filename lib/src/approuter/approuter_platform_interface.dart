import 'package:flutter/material.dart';

import 'package:flutter_approuter/src/approuter/approuter_method_channel.dart';

abstract class AppRouterPlatform {
  static final AppRouterPlatform _instance = MethodChannelAppRouter();

  /// The default instance of [AppRouterPlatform] to use.
  ///
  /// Defaults to [AppRouterPlatform].
  static AppRouterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppRouterPlatform] when
  /// they register themselves.

  BuildContext? getContext() {
    throw UnimplementedError('pop() has not been implemented.');
  }

  void push(Widget page) {
    throw UnimplementedError('push() has not been implemented.');
  }

  void pushAndRemoveUntil(Widget page) {
    throw UnimplementedError('pushOffAll() has not been implemented.');
  }

  void pushReplacement(Widget page) {
    throw UnimplementedError('pushOffAll() has not been implemented.');
  }

  void pushReplacementNamed(String route, [Object? arguments]) {
    throw UnimplementedError('pushOffAll() has not been implemented.');
  }
  
  void pushNamedAndRemoveUntil(String route, [Object? arguments]) {
    throw UnimplementedError('pushOffAll() has not been implemented.');
  }

  void pushNamed(String routeName, [Object? arguments]) {
    throw UnimplementedError('pushNamed() has not been implemented.');
  }

  void pop() {
    throw UnimplementedError('pop() has not been implemented.');
  }
}
