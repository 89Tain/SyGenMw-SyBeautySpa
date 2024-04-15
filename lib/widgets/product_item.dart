import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../views/jobs/job_details.dart';

class ProductItem extends StatelessWidget {
  
  String picture='';
  String name='';
  String specialty='';
  String price='';

  ProductItem({Key? key, required this.price,required this.specialty,required this.picture, required this.name});
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
                      height: 100,
                      width: 100,
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
                                  placeholder: (context, url) => const CardLoading(
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
                    SizedBox(width: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,style: TextStyle(color: Constants().secondaryColor,fontWeight: FontWeight.bold,fontSize: 15),),
                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.category,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                          Text(specialty),
                        ],),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Icon(Icons.money,color: Constants().primaryColor,size: 15),
                          SizedBox(width: 2,),
                           Text(price ,style: TextStyle(color: Colors.pink) ,)
                        ],),
                        

                        
                      
                        
                      ],
                    )
                  ],
                ),
              ),),
              );
  }
}

