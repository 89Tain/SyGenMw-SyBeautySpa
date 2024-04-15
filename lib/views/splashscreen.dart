
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:malawi_jobs/views/auth/login.dart';

import '../constants/constants.dart';
import '../widgets/special_title.dart';
import 'auth/category_selector.dart';
import 'auth/register.dart';



class SplashScreenView extends StatelessWidget {

  void navigateToHomeScreen()
  {
    var d = Duration(seconds: 5);
    // delayed 5 seconds to next page
    Key key;
    Future.delayed(d, () {
      //_appInitializer.checkIfLoggedIn();
      Get.to(LoginView());
    });
  }

  @override
  Widget build(BuildContext context) {
    navigateToHomeScreen();

   
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white10,
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/icons/logo2.jpeg'),
                //Constants().appLogo,
                Shimmer.fromColors(
                  period : const Duration(milliseconds: 2000),
                  baseColor: Colors.black,
                  highlightColor: Colors.red,
                  child: Text('Your beauty, our priority',style: TextStyle(fontSize: 30),))
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
