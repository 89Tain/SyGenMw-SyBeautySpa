
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:malawi_jobs/widgets/booking_item.dart';

import '../constants/constants.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/icon_buttons.dart';
import '../widgets/special_title.dart';
import 'products.dart';
import 'services.dart';
import 'sytlists.dart';



class Homeview extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
        appBar:AppBar(
        
          backgroundColor: Constants().primaryColor,
          title: Text('Madam O\'s Beauty Spar'),
        ),
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      body: SafeArea(
        child: Center(
          child:  ListView(
            
            children: [
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                padding: const EdgeInsets.all(2),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                physics: const BouncingScrollPhysics(),
                children: [
                  IconTextButton(
                    iconPicture: 'assets/icons/booking.png', 
                    text: ' My Reservations (10)', onPressed: () => {
                    //Get.to(PendingFaults())
                  }),IconTextButton(
                      iconPicture: 'assets/icons/services.png', 
                      text: 'Services',
                      onPressed: () {
                       Get.to(Services());
                  }),
                 
                  IconTextButton(
                      iconPicture: 'assets/icons/stylists.png', 
                      text: 'Stylists',
                      onPressed: () {
                       Get.to(Stylists());
                  }),
                  IconTextButton(
                      iconPicture: 'assets/icons/products.png', 
                      text: 'Products',
                      onPressed: () {
                       Get.to(Products());
                  }),
                  
                ],
            ),
              ),
            
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                  Container(
                    margin: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('My Upcoming Reservations',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                      IconButton(onPressed: null, icon: Icon(Icons.calendar_month))
                    ],) ),
                  BookingItem(price: '30,000MWK', specialty: 'Braiding', datetime: '19-06-2024 13:00hrs', name: 'Braiding'),
                  BookingItem(price: '50,000MWK', specialty: 'Massage', datetime: '20-06-2024 13:00hrs', name: 'Braiding'),
                  BookingItem(price: '50,000MWK', specialty: 'Nails', datetime: '20-06-2024 13:00hrs', name: 'Braiding'),
                ],
              ),
            
               SizedBox(height:200) 
              
            
            ])),
      ));
          
  }
}

