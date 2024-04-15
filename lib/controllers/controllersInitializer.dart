import 'package:get/get.dart';
import 'auth/auth_controller.dart';

class Controllers {
  static initializeControllers() {

    
    Get.deleteAll();
    Get.put(AuthController());
  
    
  }


}