import 'package:beauty_spa/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> tlogout(BuildContext context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.clear();
  // ignore: use_build_context_synchronously
  ScaffoldMessenger.of(context)
      .showSnackBar(const SnackBar(content: Text("Hope to see you soon ;)")));
  Get.offAll(const LoginView());
}
