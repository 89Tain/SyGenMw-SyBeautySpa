// ignore_for_file: deprecated_member_use

import 'package:beauty_spa/components/card.component.contact.dart';
import 'package:beauty_spa/components/imageBanner.component.contact.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';

// ignore: must_be_immutable
class TContacts extends StatelessWidget {
  const TContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Quick Contacts"),
          backgroundColor: Constants().primaryColor,
        ),
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // ignore: sized_box_for_whitespace
        body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children:  [
                  const TImageBanner("assets/icons/stylist2.jpg"),
                  const SizedBox(height: 10.0,),

                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ExpansionTile(
                      initiallyExpanded: true,
                      title: Text(
                        'Who We are',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Welcome to Madam O's Beauty Spa, where indulgence meets rejuvenation in a serene oasis. Our expert team offers personalized treatments to pamper you from head to toe. Step into our tranquil atmosphere and discover the epitome of luxury and wellness. Surrender to the art of self-care and embrace your beauty within at Madam O's.",
                            style: TextStyle(fontSize: 16.0),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: ExpansionTile(
                      title: Text(
                        'What You Can Do?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('Have access to our collection of stylist\'s, products and services at the convinence of your finger tips'),
                        ),
                        ListTile(
                          title: Text('Schedule appointments through our reservation section'),
                        ),
                        ListTile(
                          title: Text('Discover available branches'),
                        ),
                        ListTile(
                          title: Text('Choose your preferable stylist'),
                        ),
                        ListTile(
                          title: Text('And get notified about what matters to You'),
                        ),
                        ListTile(
                          title: Text('Manage your account'),
                        ),
                        ListTile(
                          title: Text('And hey, also talking to us'),
                        ),
                      ],
                    ),
                  ),
            
                  tParentCard(
                    [
                      InkWell(
                        onTap: ()async{Uri emailLauncher = Uri(
                          scheme: 'mailto',
                          path: "manda.titani@gmail.com",
                        );
                        await launch(emailLauncher.toString());
                        },
                        child: tCard('manda.titani@gmail.com', "mail"),
                      ),
                      const SizedBox(height: 20,),

                      InkWell(
                        onTap: ()async{Uri phoneLaunchUri = Uri(
                          scheme: 'tel',
                          path: "+265992188589",
                        );
                        await launch(phoneLaunchUri.toString());
                        },
                        child: tCard('+265992188589', "phone"),
                      ),
                    ]
                ),


                  const SizedBox(height: 77,)

                  // components.TCraftsText(
                  //   models.developerTitle,
                  //   models.developerBody, 
                  //   onTapEmail: ()
                  //   {
                  //     tools.launchEmailDev('manda.titani@gmail.com');
                  //   }, onTapUrl: () {
                  //     tools.launchUrlDev('https://www.89craftsplusart.com');
                  //   }, onTapPhone: () {
                  //     tools.launchPhoneDev('+265992188589');
                  //   }
                  // ),
                  // const components.TImageBannerDev("assets/images/crafts.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }
}
