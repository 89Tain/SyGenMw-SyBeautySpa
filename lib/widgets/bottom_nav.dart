import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/views/home.dart';
import 'package:malawi_jobs/views/jobs/profile.dart';
import 'package:malawi_jobs/views/jobs/saved_jobs.dart';
import 'package:malawi_jobs/widgets/popup_widget.dart';

import 'bottom_nav_item.dart';

class BottomNav extends StatelessWidget {
  int currentTab;

  

  BottomNav({Key? key, required this.currentTab});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
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
                Get.offAll(SavedJobs());
              },
            ),
              BottomNavItem(
              text: 'Home',
              icon: 'home.png',
              onPressed: () {
                Get.offAll(Homeview());
                
              },
            ),
          
           
            BottomNavItem(
              text: 'Profile',
              icon: 'profile.png',
              onPressed: () {
                Get.offAll(ProfileJobs());
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
