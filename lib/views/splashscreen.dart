
import 'package:beauty_spa/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';




class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});


  void navigateToHomeScreen()
  {
    var d = const Duration(seconds: 5);
    // delayed 5 seconds to next page
    Future.delayed(d, () {
      //_appInitializer.checkIfLoggedIn();
      Get.to(const LoginView());
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
                  child: const Text('Your beauty, our priority',style: TextStyle(fontSize: 30),))
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
