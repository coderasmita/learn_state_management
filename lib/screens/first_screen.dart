import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 40),
            Text(
              "First Screen",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
