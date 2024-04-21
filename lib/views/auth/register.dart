import 'package:beauty_spa/actions/registration/registration.action.registrationView.dart';
import 'package:beauty_spa/constants/constants.dart';
import 'package:beauty_spa/models/registration.models.dart';
import 'package:beauty_spa/views/auth/login.dart';
import 'package:beauty_spa/widgets/tainWidgets/radioButtons.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/curved_button.dart';
import '../../widgets/custom_textfields.dart';
import '../../widgets/searchable_drop_down.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  int selectedGender = 0;
  int selectedPreference = 0;
  int selectedNotification = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        left: false,
        right: false,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(children: [
            Constants().appLogo,
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Register',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            CustomTextField(controller: fullNameController, hint: 'Full Name'),
            // EMAIL
            CustomTextField(
              controller: emailController,
              hint: 'Email',
            ),
            // PHONE
            CustomTextField(
              controller: phoneController,
              hint: 'Phone Number',
            ),
            // PASSWORD
            CustomTextField(
              controller: passwordController,
              hint: 'Password',
              isPassword: true,
            ),
            SearchableDropDownCustom(items: const [
              'Blantyre',
              'Lilongwe',
              'Mzuzu',
              'Zomba',
              'Others'
            ], hint: 'City', controller: cityController),
            const Text('Gender'),
            const SizedBox(
              height: 8,
            ),
            // Row(
            //   children: [
            //     CurvedButton(text: 'Male', onPressed: (){}),
            //     const SizedBox(width: 5,),
            //     CurvedButton(text: 'Female', buttonColor: Colors.white,borderColor: Constants().primaryColor,textColor: Colors.black, onPressed: (){}),
            //   ],
            // ),
            Row(
              children: [
                TCurvedRadio(
                  name: "Male",
                  value: selectedGender == 1,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = 1;
                      genderController = TextEditingController(text: "male");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                TCurvedRadio(
                  name: "Female",
                  value: selectedGender == 2,
                  onChanged: (value) {
                    setState(() {
                      selectedGender = 2;
                      genderController = TextEditingController(text: "female");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text('Preferences'),
            ),

            // PREFERENCES
            SizedBox(
              height: 20,
              width: MediaQuery.of(context).size.width,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                // Beauty
                TCurvedRadio(
                  name: "Beauty",
                  value: selectedPreference == 1,
                  onChanged: (value) {
                    setState(() {
                      selectedPreference = 1;
                      preferenceController =
                          TextEditingController(text: "beauty");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  width: 5.0,
                ),

                // Pedicure
                TCurvedRadio(
                  name: "Pedicure",
                  value: selectedPreference == 2,
                  onChanged: (value) {
                    setState(() {
                      selectedPreference = 2;
                      preferenceController =
                          TextEditingController(text: "pedicure");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                // All
                TCurvedRadio(
                  name: "All",
                  value: selectedPreference == 3,
                  onChanged: (value) {
                    setState(() {
                      selectedPreference = 3;
                      preferenceController = TextEditingController(text: "all");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
              ]),
            ),

            const Text('Allow Notifications'),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                // Yes
                TCurvedRadio(
                  name: "Yes",
                  value: selectedNotification == 1,
                  onChanged: (value) {
                    setState(() {
                      selectedNotification = 1;
                      notificationController =
                          TextEditingController(text: "yes");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
                const SizedBox(
                  width: 5,
                ),
                // No
                TCurvedRadio(
                  name: "No",
                  value: selectedNotification == 2,
                  onChanged: (value) {
                    setState(() {
                      selectedNotification = 2;
                      notificationController =
                          TextEditingController(text: "no");
                    });
                  },
                  buttonColor: Colors.white,
                  borderColor: Constants().primaryColor,
                  textColor: Colors.black,
                ),
              ],
            ),

            const SizedBox(
              height: 5,
            ),
            CurvedButton(
              text: 'Register',
              textColor: Colors.white,
              buttonColor: Constants().primaryColor,
              borderColor: Colors.white,
              onPressed: () {
                tRegister(context);
              },
              height: 40,
              fontSize: 18,
              width: MediaQuery.of(context).size.width,
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                    onPressed: () {
                      Get.to(const LoginView());
                    },
                    child: const Text('Return')))
          ]),
        ),
      ),
    );
  }
}
