import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class CategoryOption extends StatelessWidget {
  String heading = '';
  String body = '';
  String icon = '';
  bool showBody=false;
  Function()? onPressed;

  CategoryOption(
      {Key? key,
      required this.heading,
      required this.body,
      required this.icon,this.showBody=false,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Card(
        margin: EdgeInsets.only(top: 10),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: Color.fromARGB(31, 198, 185, 185),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                icon,
                color: Constants().primaryColor,
                width: 20,
              ),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  heading,
                  style: TextStyle(
                      color: Constants().secondaryColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
                showBody?Text(
                  body,
                  style: TextStyle(fontSize: 12),
                ):SizedBox(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
