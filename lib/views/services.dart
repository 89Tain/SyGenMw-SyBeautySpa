

import 'package:beauty_spa/models/lc.galleryItemCustom.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';
import '../widgets/gallery_corousel.dart';


// ignore: must_be_immutable
class Services extends StatelessWidget {

  var imagesList=['https://www.health.com/thmb/K_Vtfnh3Yu-Ceya3aETxfH72k9Q=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1175433234-034014dc5b9c45edaeaf04c7b80ceafc.jpg',
              'https://media.istockphoto.com/id/1156066376/photo/makeup-artist-applies-makeup-on-face-of-girl.jpg?s=612x612&w=0&k=20&c=wkfiV3s1J2r8lSniru2xLBcfc2kYqUuDvD75M-eEiaI=',
              'https://media.istockphoto.com/id/1350573811/photo/hairstylists-braiding-and-extending-a-clients-hair-in-salon.jpg?s=612x612&w=0&k=20&c=1Nx72JfLU7Zd5AungOrrTK1JAlJTEtFLoqgllTQXXoo=',
              'https://salonsuitespb.com/wp-content/uploads/2023/09/Nail-Salon-1.jpg'
            ];

  Services({super.key});

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
                    margin: const EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white54,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('Services',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                    ],) ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('These services can be found from our beauty spar.'),
              ),
            GalleryImagesCorousel(galleryItems: [
              GalleryItemCustom(title: 'Make Up', description: 'We do make up', imageUrl: imagesList[0], category: 'category'),
              GalleryItemCustom(title: 'Spar', description: 'We do Spar', imageUrl: imagesList[1], category: 'category'),
              GalleryItemCustom(title: 'Spar', description: 'We do Spar', imageUrl: imagesList[2], category: 'category'),
                 GalleryItemCustom(title: 'Spar', description: 'We do Spar', imageUrl: imagesList[3], category: 'category'),
            ], height: 500, width: 370, autoLoop: false, isGalleryItem: true),
            const SizedBox(height: 100,)
            
            ])),
      ));
          
  }
}
