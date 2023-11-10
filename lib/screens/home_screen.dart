import 'package:flutter/material.dart';
import 'package:nav_demo/screens/first_screen.dart';

import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int a = 200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$a',
            style: const TextStyle(fontSize: 22),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              setState(() {
                a++;
              });
            },
            child: const Text("Increment"),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                a--;
              });
            },
            child: const Text("Decrement"),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const FirstScreen(),
              ),
            ),
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
    );
  }
}
