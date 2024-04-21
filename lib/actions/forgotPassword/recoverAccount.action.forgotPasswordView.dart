// ignore_for_file: use_build_context_synchronously
import 'package:beauty_spa/models/login.models.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> tRecoverAccount(BuildContext context) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: emailController.text.trim()
      );
      ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("We have sent You a recovery Email :)")
      )
    );
  } on FirebaseException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(e.message.toString())
      )
    );
  }
}
