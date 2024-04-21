import 'package:beauty_spa/views/home.dart';
import 'package:beauty_spa/views/pages/profile.dart';
import 'package:beauty_spa/views/pages/lc.aboutUs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bottom_nav_item.dart';

// ignore: must_be_immutable
class BottomNav extends StatelessWidget {
  int currentTab;

  

  BottomNav({super.key, required this.currentTab});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            BottomNavItem(
              text: 'Contact',
              icon: 'saved.png',
              onPressed: () {
                Get.offAll(const TContacts());
              },
            ),
              BottomNavItem(
              text: 'Home',
              icon: 'home.png',
              onPressed: () {
                Get.offAll(const Homeview());
                
              },
            ),
          
           
            BottomNavItem(
              text: 'Profile',
              icon: 'profile.png',
              onPressed: () {
                Get.offAll(const ProfileJobs());
                /*PopupWidget().showSnackbar(
                  backgroundColor: Colors.orange,
                  heading: 'Coming soon!',
                  body:'Stay tuned for the virtual tour',
                  icon: const Icon(Icons.warning, color: Colors.white));*/
                
               
              },
            )
          ],
        ),
      ),
    );
  }
}
