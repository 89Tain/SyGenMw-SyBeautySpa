import 'package:flutter/material.dart';
import 'package:malawi_jobs/constants/constants.dart';

class BottomNavItem extends StatelessWidget {
  String text = '';
  String icon = '';
  Function()? onPressed;

  BottomNavItem({Key? key, required this.text, required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
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
