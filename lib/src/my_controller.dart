import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var book = 0.obs;

  void increment() {
    book.value++;
  }

  void decriment() {
    if (book.value <= 0) {
      Get.snackbar("Buying books", "Can not be less then zero",
      icon: const Icon(Icons.alarm,color: Colors.black,),
      barBlur: 20,
      isDismissible: true,
      duration: const Duration(seconds: 3), 
      );
    }else{

    book.value--;
    }
  }
}
