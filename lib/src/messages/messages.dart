import 'package:flutter/services.dart';

final message = _Message();

class _Message {
  String packageError = "PACKAGE_NAVIGATION_ERROR";

  void throwError({Object? e, StackTrace? stackTrace}) {
    throw PlatformException(
      code: packageError,
      message: e.toString(),
      stacktrace: stackTrace.toString(),
    );
  }
}
