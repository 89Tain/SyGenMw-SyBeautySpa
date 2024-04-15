

import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';
import '../widgets/stylist_item.dart';



class Stylists extends StatelessWidget {

  var imagesList=['https://beautifulgracesalon.com/wp-content/uploads/2017/09/8-Questions-to-Ask-Your-Hair-Stylist-Before-a-Session.jpg',
              'https://www.sj-r.com/gcdn/presto/2023/03/03/NSJR/99948ec6-63cc-42e3-86a9-0d00bcb90619-030323HairSalon.jpg?crop=4210,2369,x0,y148&width=3200&height=1801&format=pjpg&auto=webp',
              'https://media.california.com/media/_versions_jpg/articles/hair_stylist_with_client__5659x3772____v1222x580__.jpg'
            ];

  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      body: SafeArea(
        child: Center(
          child:  ListView(
            
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Constants().appLogo,
                  Container(
                    margin: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Stylists',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                    ],) ),
                ],
              ),
              StylistItem(name: 'John Carter',specialty:'Nails, Braiding',picture: imagesList[1],),
              StylistItem(name: 'Janny Smiles',specialty:'Nails, Braiding',picture: imagesList[2],),
              StylistItem(name: 'Tony Elite',specialty:'Nails, Braiding',picture: imagesList[0],),
              
              SizedBox(height: 100,)
            
            ])),
      ));
          
  }
}
