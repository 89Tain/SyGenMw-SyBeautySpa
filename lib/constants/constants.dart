import 'package:flutter/material.dart';

import '../widgets/special_title.dart';


class Constants{
  final Color primaryColor=Color.fromARGB(255, 224, 74, 124);
  final Color secondaryColor=const Color(0xff0f65af);
  final String signatureFont='richard';
  final String umodziParkFont='cambria_bold';
  final String umodziParkFontNormal='cambria';
  final Widget appLogo= Center(child:  SpecialTitle(leading: 'Madam O\'s Beauty Spar',tail: '',),);
  
  
}