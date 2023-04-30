import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: "My Hero",
          child: Container(
          width: 500,
          height: 500,
          color: Colors.pinkAccent,
              ),
        ),)
    );
  }
}