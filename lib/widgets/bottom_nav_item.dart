import 'package:beauty_spa/constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavItem extends StatelessWidget {
  String text = '';
  String icon = '';
  Function()? onPressed;

  BottomNavItem({super.key, required this.text, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: MaterialButton(
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Image.asset(
                  'assets/icons/$icon',
                  width: 15,
                  color: Constants().primaryColor
                  
                ),
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black, fontSize: 13),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
