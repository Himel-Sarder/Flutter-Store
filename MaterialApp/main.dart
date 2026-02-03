import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // BASIC
      title: 'MaterialApp Full Demo',
      debugShowCheckedModeBanner: false,
      color: Colors.blue,

      // THEME
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      // themeMode: ThemeMode.system,

      // HOME
      home: const HomeScreen(),

      // // ROUTES
      // routes: {
      //   '/home': (context) => const HomeScreen(),
      //   '/settings': (context) => const SettingsScreen(),
      // },
      // initialRoute: '/home',

      // // ADVANCED ROUTING
      // onGenerateRoute: (settings) {
      //   if (settings.name == '/profile') {
      //     return MaterialPageRoute(builder: (context) => const ProfileScreen());
      //   }
      //   return null;
      // },
      // onUnknownRoute: (settings) {
      //   return MaterialPageRoute(builder: (context) => const UnknownScreen());
      // },

      // // LOCALIZATION
      // locale: const Locale('en'),
      // supportedLocales: const [Locale('en'), Locale('bn')],

      // // NAVIGATION CONTROL
      // navigatorKey: GlobalKey<NavigatorState>(),
      // navigatorObservers: [NavigatorObserver()],

      // // DEBUG
      // showPerformanceOverlay: false,
      // debugShowMaterialGrid: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text('Home Screen')),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const Center(child: Text('Settings Screen')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: const Center(child: Text('Profile Screen')),
    );
  }
}

class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text('404 - Page Not Found')));
  }
}
