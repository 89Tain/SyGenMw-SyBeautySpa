// ignore_for_file: use_build_context_synchronously, avoid_print

import 'package:beauty_spa/models/registration.models.dart';
import 'package:beauty_spa/views/auth/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> tRegister(BuildContext context) async {
  String fullName = fullNameController.text.trim();
  String email = emailController.text.trim();
  String phone = phoneController.text.trim();
  String password = passwordController.text.trim();
  String city = cityController.text.trim();
  String gender = genderController.text.trim();
  String preference = preferenceController.text.trim();
  String notifications = notificationController.text.trim();

  if (fullName.isNotEmpty &&
      email.isNotEmpty &&
      phone.isNotEmpty &&
      password.isNotEmpty &&
      city.isNotEmpty &&
      gender.isNotEmpty &&
      preference.isNotEmpty &&
      notifications.isNotEmpty) {
    // Email Registration
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

          try {
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('users');
      await collectionReference.doc(email).set({
        "fullName": fullName,
        "email": email,
        "phone": phone,
        "password": password,
        "city": city,
        "preference": preference,
        "gender": gender,
        "notifications": notifications
      });

      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Register Successfully")));

      Get.to(const LoginView());
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.message.toString())));
    }
    // RealTimeDatabase
    
  } else {
    print(email);
    print(fullName);
    print(phone);
    print(password);
    print(city);
    print(preference);
    print(gender);
    print(notifications);
    ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please fill out all fields")));
  }
}
