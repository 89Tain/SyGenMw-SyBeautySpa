import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';
import '../models/lc.galleryItemCustom.dart';

// ignore: must_be_immutable
class GalleryImagesCorousel extends StatelessWidget {
  List<GalleryItemCustom> galleryItems;
  double height;
  double width;
  bool autoLoop;
  bool isGalleryItem;


  GalleryImagesCorousel({super.key, this.isGalleryItem = false, required this.galleryItems, this.autoLoop = true, this.height = 300, this.width = 220});

  @override
  Widget build(BuildContext context) {
    return Gallery3D(
     
      controller: Gallery3DController(
        autoLoop: autoLoop,
        delayTime: 3000,
        itemCount: galleryItems.length,
        ),
        
        width: MediaQuery.of(context).size.width,
        height: height,
        isClip: true,
        itemConfig: GalleryItemConfig(
          width: width,
          height: height,
          radius: 10,
          isShowTransformMask: true,
        ),
       
        onItemChanged: (index) {
          //controller.corouselCurrentIndex.value = index;
        },
        onClickItem: (value) {
          // ignore: avoid_print
          print(value);
         // print('clickedd'+controller.corouselCurrentIndex.value.toString()+' FILTERED ITEMS'+con.filteredGalleryItems.length.toString());
       // GalleryDetailsScreenModal().popup(context: context, galleryItem: con.filteredGalleryItems[value]) : ;
        },
        itemBuilder: (context, index) {
          return CachedNetworkImage(
            imageUrl: galleryItems[index].imageUrl,
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
              borderRadius: BorderRadius.all(Radius.circular(10)),
              margin: EdgeInsets.only(bottom: 10),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        });
  }
}
