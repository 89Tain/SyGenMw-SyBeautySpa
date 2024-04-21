// ignore_for_file: use_build_context_synchronously

import 'package:beauty_spa/actions/login/setPreferences.action.loginView.dart';
import 'package:beauty_spa/models/login.models.dart';
import 'package:beauty_spa/views/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> tAuthentication(BuildContext context) async {
  String userEmail = emailController.text.trim();
  String userPassword = passwordController.text.trim();

  if (userEmail.isNotEmpty && userPassword.isNotEmpty) {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: userEmail, password: userPassword);
          
      setPreferences(userEmail);//To track each user

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Welcome to Beauty Spa")));
      Get.offAll(const Homeview());
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please Fill out all fields")));
  }
}
