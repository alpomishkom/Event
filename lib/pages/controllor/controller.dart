import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences storge;

  static Future<void> init() async {
    storge = await SharedPreferences.getInstance();
  }
}
