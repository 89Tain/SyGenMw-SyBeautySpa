
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'controllers/lc.controllersInitializer.dart';
import 'views/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Controllers.initializeControllers();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Beauty Spa',
      defaultTransition: Transition.fadeIn,
      theme: ThemeData(
        fontFamily: 'quicksand',
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreenView(),
      //home: SavedJobs(),
    );
  }
}
