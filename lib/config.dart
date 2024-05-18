import 'package:flutter/services.dart';

class Config {
  static const MethodChannel _channel = MethodChannel('config');
  static String BASE_URL = '';

  static Future<String> get baseUrl async {
    final String baseUrl = await _channel.invokeMethod('getBaseUrl');
    return baseUrl;
  }
}
