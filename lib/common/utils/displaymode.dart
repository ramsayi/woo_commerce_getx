import 'package:flutter_displaymode/flutter_displaymode.dart';

class DisplayMode {
  static Future<void> setHighRefreshRate() async {
    await FlutterDisplayMode.setHighRefreshRate();
  }

  static Future<void> setLowRefreshRate() async {
    await FlutterDisplayMode.setLowRefreshRate();
  }
}