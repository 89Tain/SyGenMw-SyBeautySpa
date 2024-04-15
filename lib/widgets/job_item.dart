import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../views/jobs/job_details.dart';

class JobItem extends StatelessWidget {
  
  String picture='';
  String companyName='';
  String location='';
  String jobTitle='';
  String postedDate='';
  String expiryDate='';
  String category='';

  JobItem({Key? key, required this.category,required this.expiryDate,required this.postedDate,required this.picture, required this.companyName, required this.location,required this.jobTitle});
  @override
  Widget build(BuildContext context) {
  
    return MaterialButton(onPressed: (){
      Get.to(JobDetails());
    },
              child: Card(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(100),),
                        child: Container(
                        height: 50,
                        width: 50,
                        child: CachedNetworkImage(
                                    imageUrl: picture,
                                    imageBuilder: (context, imageProvider) => Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    placeholder: (context, url) => CardLoading(
                                      height: 100,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      margin: EdgeInsets.only(bottom: 10),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                      ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(jobTitle,style: TextStyle(color: Constants().secondaryColor,fontWeight: FontWeight.bold),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.location_city,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                          Text(companyName),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.category,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                          Text(category),
                        ],),

                        
                        Row(children: [
                          Icon(Icons.location_pin,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                          Text(location),
                        ],),
                        Row(
                          children: [
                          Icon(Icons.calendar_month,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                          Text('$expiryDate || $expiryDate'),
                        ],),
                        
                      ],
                    )
                  ],
                ),
              ),),
              );
  }
}

