import 'package:flutter/material.dart';
import 'package:beymen_test_case/common/init/service_locator.dart' as dependencyInjection;

class ServiceLocatorProvider {
  static T provide<T extends Object>() {
    try {
      return dependencyInjection.provide<T>();
    } catch (e) {
      FlutterError.reportError(FlutterErrorDetails(
        exception: Exception(
          'No locator to access found!!! ${T.toString()}',
        ),
        stack: StackTrace.current,
      ));

      rethrow;
    }
  }
}
