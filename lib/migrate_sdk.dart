import 'dart:io';

import 'package:flutter/services.dart';

class MigrateSdk {
  static const MethodChannel _channel = MethodChannel('migrate_sdk');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> get defaultGreeting async {
    final String? greeting = await _channel.invokeMethod('getdefaultGreeting');
    return greeting;
  }

  static Future<String?> openVTCGateway(Map<String, dynamic> options) async {
    // Map<String, dynamic> validationResult = _validateOptions(options);
    if (Platform.isAndroid) {}
    final String? result = await _channel.invokeMethod('openVTCGateway');
    return result;
  }
}
