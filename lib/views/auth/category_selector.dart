import 'package:beauty_spa/widgets/benefits.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      const Text('Select Category',style: TextStyle(fontSize: 30),),
                      CategoryOption(
                        onPressed: () {
                         // Get.to(RegisterView(category: 'Service Seeker',));
                        },
                        heading:'Service Seeker',
                        body: 'Looking for services? you are in the right ',
                        icon: 'assets/icons/profile.png',),
                      CategoryOption(
                        onPressed: () {
                         // Get.to(RegisterView(category: 'Service Provider',));
                        },
                        heading:'Service Provider',
                        body: 'Get discounts on food and beverages',
                         icon: 'assets/icons/hotel.png',),
                      const SizedBox(height: 20,),
                      //CurvedButton(buttonColor: Constants().primaryColor,text: 'Join Us',onPressed: (){Get.to(Register());},height: 50,fontSize: 18,width: 200,),
                      //TextButton(onPressed: (){Get.to(Login());}, child: Text('Log In',style: TextStyle(color: Constants().primaryColor,fontSize: 15,fontWeight: FontWeight.w200,fontFamily: Constants().umodziParkFontNormal),))
               
             ]),
              ),
            
      ),
    );
  }


 

  
}
