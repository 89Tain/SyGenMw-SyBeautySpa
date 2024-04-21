// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CurvedButton extends StatelessWidget {
  
  String text='';
  Color buttonColor;
  Color borderColor;
  Color textColor;
  Function()? onPressed;
  double height;
  double fontSize;
  double width;
  


  CurvedButton({super.key,this.borderColor=Colors.black87,this.textColor=Colors.black87, this.width=60,this.height=20,this.fontSize=10.0,required this.text, this.buttonColor=Colors.white38,required this.onPressed});
  @override
  Widget build(BuildContext context) {
  
    return SizedBox(
                      height: height,
                      child:  Material(
                            color: buttonColor,
                            //Wrap with Material
                            shape: RoundedRectangleBorder(
                                 side:  BorderSide(width: 1, color: borderColor),
                                borderRadius: BorderRadius.circular(10.0)),
                            elevation: 0,
                         
                            clipBehavior: Clip.antiAlias, // Add This
                            child: MaterialButton(
                            
                              splashColor: Colors.green,
                              elevation: 50,
                              minWidth: width,
                              height: height,
                              color: buttonColor,
                              onPressed: onPressed,
                              child:  Text(text,
                              textAlign: TextAlign.center,
                                  style:  TextStyle(
                                    color: textColor,
                                      fontSize: fontSize,
                                      fontWeight: FontWeight.bold
                                     )),
                            )),
                      );
  }
}