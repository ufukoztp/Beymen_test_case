import 'dart:convert';
import 'dart:io';

import 'package:beymen_test_case/core/cache/hive_cache_initializer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:beymen_test_case/common/init/service_locator.dart'
as dependencyInjection;


class AppInitilizer {
  static Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dependencyInjection.initalize();
    await HiveCacheInitializer.initialize();

  }
}
