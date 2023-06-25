import 'package:flutter/material.dart';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:flutter_approuter/src/approuter/approuter_method_channel.dart';

abstract class AppRouterPlatform extends PlatformInterface {
  /// Constructs a AppRouterPlatform.
  AppRouterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AppRouterPlatform _instance = MethodChannelAppRouter();

  /// The default instance of [AppRouterPlatform] to use.
  ///
  /// Defaults to [AppRouterPlatform].
  static AppRouterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AppRouterPlatform] when
  /// they register themselves.
  static set instance(AppRouterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  void push(Widget page) {
    throw UnimplementedError('push() has not been implemented.');
  }

  void pushOffAll(Widget page) {
    throw UnimplementedError('pushOffAll() has not been implemented.');
  }

  void pushNamed(String routeName) {
    throw UnimplementedError('pushNamed() has not been implemented.');
  }

  void pop() {
    throw UnimplementedError('pop() has not been implemented.');
  }
}
