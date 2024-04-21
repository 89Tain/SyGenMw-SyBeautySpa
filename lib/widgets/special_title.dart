import 'package:flutter/material.dart';
import '../../constants/constants.dart';

// ignore: must_be_immutable
class SpecialTitle extends StatelessWidget {
  
  String leading='';
  String tail='';

  SpecialTitle({super.key,  required this.leading, required this.tail});
  @override
  Widget build(BuildContext context) {
  
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
          children: [   
              Text(leading,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 30,fontFamily: 'quicksand',color: Constants().primaryColor,),),             
              Padding(
                padding: const EdgeInsets.only(top:0.0,left: 0),
                child: Text(tail,style: TextStyle(color: Constants().secondaryColor,fontSize: 40,fontFamily: Constants().signatureFont )),
              )
          ],
        );
  }
}

