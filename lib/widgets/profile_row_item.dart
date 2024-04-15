import 'package:flutter/material.dart';
import 'package:malawi_jobs/constants/constants.dart';

class ProfileRowItem extends StatelessWidget {
  String head = '';
  String tail = '';
 

  ProfileRowItem({Key? key, required this.head, required this.tail});
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
                          Text(head,style:TextStyle(fontWeight: FontWeight.bold),),
                          Text(tail)
              ],),
                      ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    width: MediaQuery.of(context).size.width,height: 0.5,color: Constants().primaryColor,)
                    ],
                  ),
                );
  }
}
