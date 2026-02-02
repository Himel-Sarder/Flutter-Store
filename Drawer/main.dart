import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Professional Drawer Demo',
      theme: ThemeData.light(),
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
        title: const Text("Dashboard"),
        backgroundColor: Colors.deepPurple,
      ),
      drawer: const AppDrawer(), // Professional drawer
      body: const Center(
        child: Text("Home Screen Content", style: TextStyle(fontSize: 22)),
      ),
    );
  }
}

/// ---------------- Professional Drawer ----------------
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drawer Header with Profile
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      "Himel Sarder",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Menu Items
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerItem(
                    icon: Icons.home,
                    text: "Home",
                    onTap: () => Navigator.pop(context),
                  ),
                  DrawerItem(
                    icon: Icons.person,
                    text: "Profile",
                    onTap: () => Navigator.pop(context),
                  ),
                  DrawerItem(
                    icon: Icons.settings,
                    text: "Settings",
                    onTap: () => Navigator.pop(context),
                  ),
                  DrawerItem(
                    icon: Icons.notifications,
                    text: "Notifications",
                    onTap: () => Navigator.pop(context),
                  ),
                  DrawerItem(
                    icon: Icons.help_outline,
                    text: "Help & Support",
                    onTap: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),

            // Logout Button at Bottom
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  // Add logout logic here
                },
                icon: const Icon(Icons.logout),
                label: const Text("Logout", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// DrawerItem widget for cleaner code
class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.deepPurple),
      title: Text(text, style: const TextStyle(color: Colors.black87)),
      onTap: onTap,
    );
  }
}
