import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/constants/constants.dart';
import 'package:malawi_jobs/views/auth/login.dart';

import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import '../../widgets/searchable_drop_down.dart';
import '../../widgets/special_title.dart';
import '../home.dart';


class ForgotPasswordView extends StatelessWidget {

  

  
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
                        children: [
                        Constants().appLogo,
                        SizedBox(height: 50,),
                        CustomTextfield(controller: TextEditingController(),hint: 'Email Address',),
                        CurvedButton(text: 'Reset Password', textColor: Colors.white,buttonColor: Constants().primaryColor,borderColor: Colors.white, onPressed: (){Get.to(Homeview());},height: 40,fontSize: 18,width: MediaQuery.of(context).size.width,),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: TextButton(onPressed: (){Get.to(LoginView());}, child: Text('Return')))
                        
                      

                      
                        
                       

                        ]
                      ),
            ),
          ),
    );
  }


 

  
}
