import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class IconTextButton extends StatelessWidget {
  
  String iconPicture='';
  String text='';
  Function()? onPressed;
  double size;
  double spaceHeight;

  IconTextButton({Key? key,this.spaceHeight=20, this.size=70 ,required this.iconPicture,required this.text,required this.onPressed});
  @override
  Widget build(BuildContext context) {
  
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      color: Colors.grey[50],   
      child: Container(
        decoration: BoxDecoration(border:  Border.all(width: 1,color: Constants().secondaryColor)),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(iconPicture,height: 60,),
            SizedBox(height: spaceHeight,),
            Text(text,style:  TextStyle(color: Constants().secondaryColor,fontWeight: FontWeight.w400,fontSize: 15,fontFamily: ''),)
          ],
        ),
    ));
  }
}