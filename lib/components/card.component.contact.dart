import 'package:beauty_spa/constants/constants.dart';
import 'package:flutter/material.dart';

Widget tParentCard( children) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children
      ),
      )
    ),
  );
}


tCard( String content, String iconName) {
  // Retrieve the icon data from the map, use Icons.error if the icon name is not found
  IconData iconData = iconMap[iconName] ?? Icons.error;

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(content, style: TextStyle(color:Constants().primaryColor,fontSize: 15),),
        Icon(iconData, color: Constants().primaryColor, size: 20), // Assuming you have a primaryColor constant
      ],
    ),
  );
}


// Map to associate string names to IconData
final Map<String, IconData> iconMap = {
  'phone': Icons.phone,
  'mail': Icons.mail,
  'box': Icons.add_box,
  // Add other icons as needed
};
