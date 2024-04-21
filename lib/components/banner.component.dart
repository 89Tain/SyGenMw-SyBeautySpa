import 'package:flutter/material.dart';

Widget tBanner(String title) {
  return GestureDetector(
    onTap: (){},
    child: Container(
      width: double.infinity, 
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.pink, Colors.purple],
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight, 
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Text(
        title,
        textAlign: TextAlign.center, 
        style: const TextStyle(
          fontSize: 18, 
          letterSpacing: 8.0,
          color: Colors.white,
        ),
      ),
    ),
  );
}
