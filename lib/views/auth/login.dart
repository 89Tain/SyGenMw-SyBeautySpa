import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/constants/constants.dart';
import 'package:malawi_jobs/views/auth/category_selector.dart';
import 'package:malawi_jobs/views/auth/register.dart';

import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import '../../widgets/searchable_drop_down.dart';
import '../../widgets/special_title.dart';

import '../home.dart';
import 'forgot_password.dart';

class LoginView extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body:SafeArea(
            left: false,
            right: false,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Image.asset('assets/icons/logo2.jpeg'),
                          
                       
                        

                        CustomTextfield(controller: TextEditingController(),hint: 'Email',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Password',isPassword: true,),
                        CurvedButton(
                          text: 'Login', textColor: Colors.white,buttonColor: Constants().primaryColor,borderColor: Colors.white, onPressed: (){
                            Get.offAll(Homeview());
                          },height: 40,fontSize: 18,width: MediaQuery.of(context).size.width,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(onPressed: (){Get.to(RegisterView());}, child: Text('Register',style: TextStyle(color: Constants().secondaryColor),)),
                            TextButton(onPressed: (){Get.to(ForgotPasswordView());}, child: Text('Forgot Password?',style: TextStyle(color: Constants().secondaryColor)))
                          ],
                        )
                        ]
                      ),
            ),
          ),
    );
  }


 

  
}
