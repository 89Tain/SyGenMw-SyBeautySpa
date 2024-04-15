import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../views/jobs/job_details.dart';

class BookingItem extends StatelessWidget {
  
  String datetime='';
  String name='';
  String specialty='';
  String price='';

  BookingItem({Key? key, required this.price,required this.specialty,required this.datetime, required this.name});
  @override
  Widget build(BuildContext context) {
  
    return MaterialButton(onPressed: (){
      Get.to(JobDetails());
    },
              child: Card(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(5),),
                      child: Container(
                      height: 70,
                      width: 70,
                      child: Image.asset('assets/icons/booking.png'),
                    ),
                    ),
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(specialty,style: TextStyle(color: Constants().secondaryColor,fontWeight: FontWeight.bold,fontSize: 15),),
                       
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.money,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                           Text(price ,style: TextStyle(color: Colors.pink) ,)
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.calendar_today,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                           Text(datetime ,style: TextStyle(color: Colors.pink) ,)
                        ],),
                        

                        
                      
                        
                      ],
                    )
                  ],
                ),
              ),),
              );
  }
}

