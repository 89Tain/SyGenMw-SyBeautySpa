import 'package:beauty_spa/constants/constants.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileRowItem extends StatelessWidget {
  String head = '';
  String tail = '';
 

  ProfileRowItem({super.key,  required this.head, required this.tail});
  @override
  Widget build(BuildContext context) {
    return   Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text(head,style:const TextStyle(fontWeight: FontWeight.bold),),
                          Text(tail)
              ],),
                      ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: MediaQuery.of(context).size.width,height: 0.5,color: Constants().primaryColor,)
                    ],
                  ),
                );
  }
}
