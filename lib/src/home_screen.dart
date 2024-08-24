import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text(
                  "Books",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                IconButton.filled(
                    onPressed: () =>c.increment(),
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
                const SizedBox(width: 20),
                Obx(()=>Text("${c.book.value}",style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),)),
                const SizedBox(width: 20),
                IconButton.filled(
                    onPressed: () => c.decriment(),
                    icon: const Icon(Icons.remove, color: Colors.white)),
              ],
            )
          ],
        ),
      )),
    );
  }
}
