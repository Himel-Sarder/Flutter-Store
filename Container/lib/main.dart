import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// ---------------- APP ROOT ----------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 5,
        leading: const Icon(Icons.home),
        actions: [
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const NextScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: 500,
        height: 800,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
          // border: Border.all(
          //   color: const Color.fromARGB(255, 249, 249, 249),
          //   width: 2,
          // ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 105, 9, 95),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
          // gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
        ),
        // constraints: BoxConstraints(minWidth: 100, maxWidth: 300),
        // transform: Matrix4.rotationZ(0.1),
        clipBehavior: Clip.hardEdge,

        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [WelcomeText(), SizedBox(height: 20)],
          ),
        ),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text('Welcome, This is Himel', style: TextStyle(fontSize: 22));
  }
}

/// ---------------- NEXT SCREEN ----------------
class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('This is Next Screen')),
    );
  }
}
