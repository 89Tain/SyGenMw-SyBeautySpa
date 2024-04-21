
import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';



// ignore: must_be_immutable
class JobDetails extends StatelessWidget {

  var jobItems=['https://images.africanfinancials.com/mw-tnm-logo.png',
              'https://s3-ap-southeast-1.amazonaws.com/bsy/iportal/images/airtel-logo-white-text-vertical.jpg',
              'https://play-lh.googleusercontent.com/yI8lh_Ahhu2qlovLC9F2_URmowf_82iLvi7GJuXsB0n2kXvg-Xkn02QHubT3Dh6Uis0',
              ];

  JobDetails({super.key});

  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
      backgroundColor: Colors.white,
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            
            children: [
              Constants().appLogo,
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10),),
                child: SizedBox(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: CachedNetworkImage(
                            imageUrl: jobItems[1],
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
                                const Icon(Icons.error),
                          ),
              ),
              ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Network Engineer',style: TextStyle(color: Constants().secondaryColor,fontWeight: FontWeight.bold,fontSize: 20),),
                          
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Icon(Icons.location_city,color: Constants().primaryColor,size: 20),
                                const SizedBox(width: 2,),
                                const Text('Airtel',style: TextStyle(fontSize: 15)),
                              ],),
                            ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Icon(Icons.category,color: Constants().primaryColor,size: 15),
                            const SizedBox(width: 2,),
                            const Text('House Care'),
                          ],),
                         
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(children: [
                                Icon(Icons.location_pin,color: Constants().primaryColor,size: 20),
                                const SizedBox(width: 2,),
                                const Text('Blantyre, Malawi',style: TextStyle(fontSize: 15),),
                              ],),
                            ),
                           
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(children: [
                                Icon(Icons.calendar_month,color: Constants().primaryColor,size: 20),
                                const SizedBox(width: 2,),
                                const Text('12-12-12 to 12-12-12',style: TextStyle(fontSize: 15)),
                              ],),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    const Card(child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                           Text(' \nJob Description',style: TextStyle(fontWeight: FontWeight.bold),),
                      
                           Text('YouthCare Ministries is inviting applications from suitably qualified individuals to fill the position of Accounts Assistant / Bursar at YouthCare Ministries Secondary School, Chitipi, Lilongwe.'),
                           Text(' \nDuties and responsibilities',style: TextStyle(fontWeight: FontWeight.bold),),
                           Text( '•Raising payment Vouchers'
                            '\n•Fees payment Administration'
                            '\n•Checking Requisition for accuracy'
                            '\n•Cash book maintenance and bank reconciliation'
                            '\n•Budget preparation'
                            '\n•Preparing financial Reports'
                            '\n•Oversee that all stationery returns have been paid before due date'
                            '\n•Filing documents and general office administration.')
                            ,Text('\nQualifications and experience',style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(
                            '•Diploma in Accounting'
                            // ignore: unnecessary_string_escapes
                            '\n•A minimum of three years\’ experience in relevant fields or educational institutions'
                            '\n•Proficient with Excel'
                            '\n•Very good interpersonal skills and ability to interact with parent, staff and pupils.'
                            '\n•Good management skills and self –starter.'
                            ),
                             
                        ],
                      ),
                     
                      
                     
                    ),),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('\nContacts and application method (These will only be shown if the person has paid a subscription)',style: TextStyle(fontWeight: FontWeight.bold),),
                          
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                const Text('+265 99 637 22 03',style: TextStyle(fontSize: 15)),
                                Icon(Icons.phone,color: Constants().primaryColor,size: 20),
                               
                                
                              ],),
                            ),
                         
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                const Text('tchimzere@gmail.com',style: TextStyle(fontSize: 15)),
                                Icon(Icons.mail,color: Constants().primaryColor,size: 20),
                               
                              ],),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:4),
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                const Text('Box 32212',style: TextStyle(fontSize: 15)),
                                Icon(Icons.add_box,color: Constants().primaryColor,size: 20),
                                
                              ],),
                            ),
                           
                            
                            
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height:200 ,)
            ]),
        ),
      ));
          
  }
}
