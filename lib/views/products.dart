

import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';
import '../widgets/product_item.dart';
import '../widgets/stylist_item.dart';

class Products extends StatelessWidget {

  var imagesList=['https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ1_un8iXaE7WS5vAf_ax3vsJZrbJpYa0WDg7j6_mpjw&s',
              'https://foursonline.co.bw/common_up/fours/1618912382-5482-0.jpg',
              'https://salonpoa.com/products/237/big/237.jpeg'
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
                    height: 50,
                    margin: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Products',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                    ],) ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('These products can be purchased from our beauty spar.'),
              ),
              ProductItem(price: '50,000mwk',name: 'Easy Waves Hair Food',specialty:'Good for hair growth',picture: imagesList[1],),
              ProductItem(price: '20,000mwk',name: 'Easy Waves Regular Cream',specialty:'Good for relaxing hair',picture: imagesList[2],),
              ProductItem(price: '30,000mwk',name: 'Easy Waves Curl Activator',specialty:'For quick waves',picture: imagesList[0],),
              
              SizedBox(height: 100,)
            
            ])),
      ));
          
  }
}
