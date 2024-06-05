import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello",
          style: TextStyle(fontSize: 100, color: Colors.black),
        ),
      ),
    );
  }
}
