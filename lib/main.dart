
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:malawi_jobs/views/jobs/saved_jobs.dart';
import 'package:malawi_jobs/views/auth/category_selector.dart';
import 'package:malawi_jobs/views/auth/login.dart';
import 'package:malawi_jobs/views/home.dart';
import 'package:malawi_jobs/views/jobs/saved_jobs.dart';

import 'controllers/controllersInitializer.dart';
import 'views/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Controllers.initializeControllers();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitUp,
    ]);
    return GetMaterialApp(
      title: 'Umodzi Park',
      defaultTransition: Transition.fadeIn,
      theme: ThemeData(
        fontFamily: 'quicksand',
        primarySwatch: Colors.blueGrey,
      ),
      home: SplashScreenView(),
      //home: SavedJobs(),
    );
  }
}
