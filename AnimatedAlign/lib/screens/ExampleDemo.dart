import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  Alignment _alignment = Alignment.topLeft;

  void _moveBox() {
    setState(() {
      _alignment = _alignment == Alignment.topLeft
          ? Alignment.bottomRight
          : Alignment.topLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _moveBox,
        child: AnimatedAlign(
          alignment: _alignment,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(width: 80, height: 80, color: Colors.red),
        ),
      ),
    );
  }
}
