import 'package:shared_preferences/shared_preferences.dart';

Future setPreferences(String userEmail) async {
  //ADD MORE PREFENCES HERE... NEVER USED GETX SO THIS IS AN UNCONVENTIONAL IMPLEMENTATION
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString("userEmail", userEmail);
}
