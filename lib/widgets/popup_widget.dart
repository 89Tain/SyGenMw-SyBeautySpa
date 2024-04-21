import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopupWidget extends GetxController {
  showSnackbar({required String heading, required String body, required Color backgroundColor,Icon icon=const Icon(Icons.person, color: Colors.white),Duration duration=const Duration(seconds: 5)}) {
    Get.snackbar(heading, body,
        duration:duration, icon: icon, snackPosition: SnackPosition.BOTTOM, backgroundColor: backgroundColor, colorText: Colors.white);
  }

  showSuccessSnackbar() {
    Get.snackbar(
      'Operation Success', 
      'Operation was completed successfully',
      duration: const Duration(seconds: 5), icon: const Icon(Icons.person, color: Colors.white), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.green, colorText: Colors.white);
  }

  showFailedSnackbar({String? error}) {
    Get.snackbar(
      'Failed', 
      'Operation Failed. ${error!}',
      duration: const Duration(seconds: 5), icon: const Icon(Icons.person, color: Colors.white), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red, colorText: Colors.white);
  }

  showPendingSnackbar() {
    Get.snackbar(
      'Pending', 
      'Items will be uploaded when your internet connection improves',
      duration: const Duration(seconds: 5), icon: const Icon(Icons.person, color: Colors.white), snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.orange, colorText: Colors.white);
  }

  

}
