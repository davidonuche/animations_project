import 'package:flutter/material.dart';

import 'screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch, 
            children: [
              Hero(
                tag: "My Hero",
                child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.amber,
                ),
              ),
              SizedBox(height: 10),
              TextButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ScreenTwo(),
            ),
          ),
          child: Text("Go to screen 2"),
              ),
            ]),
        ));
  }
}
