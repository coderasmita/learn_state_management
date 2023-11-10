import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/controllers/increment_controller.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final IncrementController incrementController =
        Get.put(IncrementController());
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${incrementController.b}',
                style: const TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  incrementController.increment();
                },
                child: const Text("Increment"),
              ),
              const SizedBox(height: 40),
              const Text(
                "First Screen",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
