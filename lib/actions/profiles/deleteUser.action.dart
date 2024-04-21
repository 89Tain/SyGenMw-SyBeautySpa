// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:beauty_spa/views/auth/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> tDeleteUserAndDocument(BuildContext context) async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  SharedPreferences preferences = await SharedPreferences.getInstance();
  String userEmail = preferences.getString("userEmail").toString();
  // Get current user
  User? user = auth.currentUser;

  if (user != null) {
    try {
      // Delete the user's Firestore document
      await firestore.collection('users').doc(userEmail).delete();

      // Delete the user from Auth
      await user.delete();
      preferences.clear();
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Account Deleted. You will be missed")));
      Get.offAll(const LoginView());
      
      
    } on FirebaseAuthException catch (authError) {
      print("Failed to delete user: ${authError.message}");
      throw Exception('Failed to delete user.');
    } on Exception catch (e) {
      print("Failed to delete Firestore document: $e");
      throw Exception('Failed to delete Firestore document.');
    }
  } else {
    print("No user signed in.");
    throw Exception('No user signed in.');
  }
}
