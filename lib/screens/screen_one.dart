import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  bool _isAnimated = false;
  double _width = 100;
  double _height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: _width,
              height: _height,
              color: _isAnimated ? Colors.red : Colors.blue,
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                if (_isAnimated) {
                  _height = 300;
                  _width = 300;
                } else {
                  _height = 100;
                  _width = 100;
                }
                _isAnimated = !_isAnimated;
                setState(() {});
              },
              child: Text("Animate"),
            ),
          ]),
    ));
  }
}
