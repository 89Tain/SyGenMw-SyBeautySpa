import 'package:beauty_spa/actions/profiles/deleteUser.action.dart';
import 'package:beauty_spa/actions/profiles/getUserData.action.dart';
import 'package:beauty_spa/actions/profiles/logout.action.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile Preview"),
        backgroundColor: Constants().primaryColor,
      ),
      body: SafeArea(
        child: ListView(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      tlogout(context);
                    },
                    child: const Text('Logout',
                        style: TextStyle(color: Colors.brown)),
                  ),
                  TextButton(
                      onPressed: () {
                        tDeleteUserAndDocument(context);
                      },
                      child: const Text('Delete',
                          style: TextStyle(color: Colors.red)))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Column(
                  children: [
                    ClipOval(
                      child: Material(
                        color: Colors.blue, // Button color
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Icon(
                              Icons.person,
                              size: 70,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              FutureBuilder<Map<String, dynamic>>(
                future: tGetUserData(),
                builder: (BuildContext context,
                    AsyncSnapshot<Map<String, dynamic>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  } else if (snapshot.hasData) {
                    var data = snapshot.data!;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(
                          children: [
                            ProfileRowItem(
                                head: 'Name', tail: data['fullName'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'Gender', tail: data['gender'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'Phone Number',
                                tail: data['phone'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'Email', tail: data['email'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'City', tail: data['city'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'Interests',
                                tail: data['preference'] ?? 'N/A'),
                            ProfileRowItem(
                                head: 'Allow Notifications',
                                tail: data['notifications'] ?? 'N/A'),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: Text("No data found!"));
                  }
                },
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
