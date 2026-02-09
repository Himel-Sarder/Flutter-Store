import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  BorderRadius _borderRadius = BorderRadius.circular(8);

  void _animate() {
    setState(() {
      _width = _width == 100 ? 200 : 100;
      _height = _height == 100 ? 200 : 100;
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
      _borderRadius = _borderRadius == BorderRadius.circular(8)
          ? BorderRadius.circular(50)
          : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _animate,
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _color,
              borderRadius: _borderRadius,
            ),
          ),
        ),
      ),
    );
  }
}
