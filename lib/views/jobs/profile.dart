
import 'package:beauty_spa/widgets/profile_row_item.dart';
import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../../widgets/bottom_nav.dart';



class ProfileJobs extends StatelessWidget {
  const ProfileJobs({super.key});




  @override
  Widget build(BuildContext context) {
 
   
    return Scaffold(
        floatingActionButton: BottomNav(
          currentTab: 1,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
       
      body: SafeArea(
        child: ListView(
          
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Constants().appLogo,
                Container(
                  margin: const EdgeInsets.all(8),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white54,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('User Profile',style: TextStyle(color: Constants().secondaryColor,fontSize: 20),),
                    const IconButton(onPressed: null, icon: Icon(Icons.person))
                  ],) ),
              ],
            ),

            const Column(
              children: [
                ClipOval(
                child: Material(
                  color: Colors.blue, // Button color
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Icon(Icons.person,size: 70, color: Colors.white,)),
                ),
              ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(child: Column(
                children: [
                 ProfileRowItem(head: 'Name', tail: 'Tony Elite'),
                 ProfileRowItem(head: 'Phone Number', tail: '0996372203'),
                 ProfileRowItem(head: 'Email', tail: 'tchimzere@gmail.com'),
                 ProfileRowItem(head: 'Interests', tail: 'IT, HR'),
                 ProfileRowItem(head: 'Status', tail: 'Freemium')
                ],
              ),),
            ),
            Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Logout',style: TextStyle(color: Constants().secondaryColor),)),
                            TextButton(onPressed: (){}, child: Text('Delete Account',style: TextStyle(color: Constants().secondaryColor)))
                          ],
                        )
          
          ]),
      ));
          
  }
}
