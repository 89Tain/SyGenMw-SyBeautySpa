import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;

Future<Map<String, dynamic>> tGetUserData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String userEmail = prefs.getString("userEmail").toString();

  DocumentSnapshot snapshot =
      await firestore.collection("users").doc(userEmail).get();
  if (snapshot.exists) {
    return snapshot.data() as Map<String, dynamic>;
  }
  return {};
}
