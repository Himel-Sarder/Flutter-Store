import 'package:flutter/material.dart';

class BgImageScreen extends StatelessWidget {
  const BgImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withOpacity(0.5)),
          Center(
            child: Text(
              'Login Screen',
              style: TextStyle(color: Colors.white, fontSize: 26),
            ),
          ),
        ],
      ),
    );
  }
}
