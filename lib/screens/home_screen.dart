import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nav_demo/controllers/couter_controller.dart';
import 'package:nav_demo/screens/first_screen.dart';

import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int a = 200;
  final CounterController counterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '${counterController.a}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {
                counterController.increment();
              },
              child: const Text("Increment"),
            ),
            TextButton(
              onPressed: () {
                counterController.decrement();
              },
              child: const Text("Decrement"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Get.to(const FirstScreen(), transition: Transition.downToUp);
              },
              // => Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const FirstScreen(),
              //   ),
              // ),
              child: const Text("Go to First Screen"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                ),
              ),
              child: const Text("Go to Second Screen"),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ThirdScreen(),
                ),
              ),
              child: const Text("Go to Third Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
