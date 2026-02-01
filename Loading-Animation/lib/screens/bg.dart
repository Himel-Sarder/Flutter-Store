import 'package:flutter/material.dart';

/// Example background widget
class BgScreen extends StatelessWidget {
  const BgScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
