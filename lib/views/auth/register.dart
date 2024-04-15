import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/constants/constants.dart';
import 'package:malawi_jobs/views/auth/login.dart';

import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import '../../widgets/searchable_drop_down.dart';
import '../../widgets/special_title.dart';
import '../home.dart';

class RegisterView extends StatelessWidget {



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
              child: ListView(

                        children: [
                        Constants().appLogo,
                        SizedBox(height: 50,),
                        Text('Register',style: TextStyle(color: Colors.blueAccent,fontSize: 20,),),
                        SizedBox(height: 10,),
                        

                        CustomTextfield(controller: TextEditingController(),hint: 'Full Name',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Email',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Phone Number',),
                        CustomTextfield(controller: TextEditingController(),hint: 'Password',isPassword: true,),
                         SearchableDropDownCustom(
                          items: const ['Blantyre','Lilongwe','Mzuzu','Zomba','Others'], 
                          hint: 'City',
                          controller:TextEditingController()
                        ),
                        Text('Gender'),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            CurvedButton(text: 'Male', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                            SizedBox(width: 5,),
                            CurvedButton(text: 'Female', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Text('Preferences(*can select multiple)'),
                        ),
                       
                        Container(
                          height: 20,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              CurvedButton(text: 'Beauty', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              SizedBox(width: 5,),
                              CurvedButton(text: 'Pedicure', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                              SizedBox(width: 5,),
                              CurvedButton(text: 'All', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                             ]
                          ),
                        ),
                        Text('Allow Notifications'),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            CurvedButton(text: 'Yes', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                            SizedBox(width: 5,),
                            CurvedButton(text: 'No', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
                          ],
                        ),
                        SizedBox(height: 5,),
                         CurvedButton(
                          text: 'Register', textColor: Colors.white,buttonColor: Constants().primaryColor,borderColor: Colors.white, onPressed: (){Get.to(Homeview());},height: 40,fontSize: 18,width: MediaQuery.of(context).size.width,),
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
