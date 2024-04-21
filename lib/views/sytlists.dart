// import 'package:flutter/material.dart';
// import '../../constants/constants.dart';
// import '../../widgets/bottom_nav.dart';
// import '../widgets/stylist_item.dart';

// // ignore: must_be_immutable
// class Stylists extends StatelessWidget {

//   var imagesList=['https://beautifulgracesalon.com/wp-content/uploads/2017/09/8-Questions-to-Ask-Your-Hair-Stylist-Before-a-Session.jpg',
//               'https://www.sj-r.com/gcdn/presto/2023/03/03/NSJR/99948ec6-63cc-42e3-86a9-0d00bcb90619-030323HairSalon.jpg?crop=4210,2369,x0,y148&width=3200&height=1801&format=pjpg&auto=webp',
//               'https://media.california.com/media/_versions_jpg/articles/hair_stylist_with_client__5659x3772____v1222x580__.jpg'
//             ];

//   Stylists({super.key});

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//         floatingActionButton: BottomNav(
//           currentTab: 1,
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

//       body: SafeArea(
//         child: Center(
//           child:  ListView(

//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Constants().appLogo,
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.white54,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                       Text('Stylists',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
//                     ],) ),
//                 ],
//               ),
//               StylistItem(name: 'John Carter',specialty:'Nails, Braiding',picture: imagesList[1],),
//               StylistItem(name: 'Janny Smiles',specialty:'Nails, Braiding',picture: imagesList[2],),
//               StylistItem(name: 'Tony Elite',specialty:'Nails, Braiding',picture: imagesList[0],),

//               const SizedBox(height: 100,)

//             ])),
//       ));

//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';
import '../widgets/stylist_item.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Stylists extends StatelessWidget {
  const Stylists({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: BottomNav(
        currentTab: 1,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Constants().appLogo,
            Container(
              margin: const EdgeInsets.all(8),
              width: MediaQuery.of(context).size.width,
              color: Colors.white54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Stylists',
                    style: TextStyle(
                      color: Constants().secondaryColor,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('stylist')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  final stylists = snapshot.data!.docs;
                  return ListView.builder(
                    itemCount: stylists.length,
                    itemBuilder: (context, index) {
                      final stylistData =
                          stylists[index].data() as Map<String, dynamic>;
                      final name = stylistData['name'] as String;
                      return FutureBuilder(
                        future: FirebaseStorage.instance
                            .ref()
                            .child(
                                'stylists/$name.jpeg') // Assuming the image path in Firebase Storage is 'stylists/$name.jpeg'
                            .getDownloadURL(),
                        builder: (context, AsyncSnapshot<String> urlSnapshot) {
                          if (urlSnapshot.connectionState ==
                              ConnectionState.waiting) {
                            return const CircularProgressIndicator();
                          }
                          if (urlSnapshot.hasError) {
                            // ignore: avoid_print
                            print(urlSnapshot.error);
                            return Text('Error: ${urlSnapshot.error}');
                          }
                          if (!urlSnapshot.hasData) {
                            return const Text('No data');
                          }
                          final imageUrl = urlSnapshot.data!;
                          return StylistItem(
                            name: stylistData['name'],
                            specialty: stylistData['profession'],
                            picture: imageUrl,
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
