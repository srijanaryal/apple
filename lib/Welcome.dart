import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              child: Text(
        'Welcome to the App',
        style: TextStyle(
            color: Colors.pink, fontSize: 40, fontWeight: FontWeight.bold),
      ))),
    );
  }
}
