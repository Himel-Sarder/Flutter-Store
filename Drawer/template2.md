<img width="357" height="734" alt="image" src="https://github.com/user-attachments/assets/566cd35b-4ad3-4ef1-b5ab-68d3b0c2356d" />
<img width="356" height="736" alt="image" src="https://github.com/user-attachments/assets/321bda65-a1dd-4057-b6dc-b10530290308" />




```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final pages = const [
    Center(child: Text("Dashboard page")),
    Center(child: Text("Inventory page")),
    Center(child: Text("Search page")),
    Center(child: Text("Online orders page")),
    Center(child: Text("Codes page")),
    Center(child: Text("Settings page")),
    Center(child: Text("About page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        selectedIndex: selectedIndex,
        onSelect: (index) {
          setState(() => selectedIndex = index);
          Navigator.pop(context); // close drawer
        },
      ),
      appBar: AppBar(
        title: const Text("Drawer UI"),
        backgroundColor: const Color(0xFF0B8F87),
      ),
      body: pages[selectedIndex],
    );
  }
}

class AppDrawer extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const AppDrawer({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  static const Color teal = Color(0xFF0B8F87);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 270,
          decoration: const BoxDecoration(
            color: teal,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(42),
              bottomRight: Radius.circular(42),
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/user.jpg"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Color(0xFFA7E6DA), width: 3),
                  ),
                ),

                const SizedBox(height: 24),

                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    children: [
                      DrawerItem(
                        icon: Icons.grid_view_rounded,
                        label: "Dashboard",
                        selected: selectedIndex == 0,
                        onTap: () => onSelect(0),
                      ),
                      DrawerItem(
                        icon: Icons.inventory_2_outlined,
                        label: "Inventory",
                        selected: selectedIndex == 1,
                        onTap: () => onSelect(1),
                      ),
                      DrawerItem(
                        icon: Icons.search,
                        label: "Search",
                        selected: selectedIndex == 2,
                        onTap: () => onSelect(2),
                      ),
                      DrawerItem(
                        icon: Icons.receipt_long_outlined,
                        label: "Online orders",
                        selected: selectedIndex == 3,
                        onTap: () => onSelect(3),
                      ),
                      DrawerItem(
                        icon: Icons.qr_code_2,
                        label: "Codes",
                        selected: selectedIndex == 4,
                        onTap: () => onSelect(4),
                      ),
                      DrawerItem(
                        icon: Icons.settings_outlined,
                        label: "Settings",
                        selected: selectedIndex == 5,
                        onTap: () => onSelect(5),
                      ),
                      DrawerItem(
                        icon: Icons.info_outline,
                        label: "About",
                        selected: selectedIndex == 6,
                        onTap: () => onSelect(6),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  static const Color teal = Color(0xFF0B8F87);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          height: 52,
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const SizedBox(width: 14),
              Icon(icon, size: 22, color: selected ? teal : Colors.white),
              const SizedBox(width: 14),
              Text(
                label,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                  color: selected ? teal : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```



```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final pages = const [
    Center(child: Text("Dashboard page")),
    Center(child: Text("Inventory page")),
    Center(child: Text("Search page")),
    Center(child: Text("Online orders page")),
    Center(child: Text("Codes page")),
    Center(child: Text("Settings page")),
    Center(child: Text("About page")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(
        selectedIndex: selectedIndex,
        onSelect: (index) {
          setState(() => selectedIndex = index);
          Navigator.pop(context); // close drawer
        },
      ),
      appBar: AppBar(
        title: const Text("Drawer UI"),
        backgroundColor: const Color(0xFF0B8F87),
      ),
      body: pages[selectedIndex],
    );
  }
}

class AppDrawer extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const AppDrawer({
    super.key,
    required this.selectedIndex,
    required this.onSelect,
  });

  static const Color teal = Color(0xFF0B8F87);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 270,
          decoration: const BoxDecoration(
            color: teal,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(42),
              bottomRight: Radius.circular(42),
            ),
            image: DecorationImage(
              image: AssetImage("assets/images/bg3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: const DecorationImage(
                      image: AssetImage("assets/images/user.jpg"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Color(0xFFA7E6DA), width: 3),
                  ),
                ),

                const SizedBox(height: 24),

                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    children: [
                      DrawerItem(
                        icon: Icons.grid_view_rounded,
                        label: "Dashboard",
                        selected: selectedIndex == 0,
                        onTap: () => onSelect(0),
                      ),
                      DrawerItem(
                        icon: Icons.inventory_2_outlined,
                        label: "Inventory",
                        selected: selectedIndex == 1,
                        onTap: () => onSelect(1),
                      ),
                      DrawerItem(
                        icon: Icons.search,
                        label: "Search",
                        selected: selectedIndex == 2,
                        onTap: () => onSelect(2),
                      ),
                      DrawerItem(
                        icon: Icons.receipt_long_outlined,
                        label: "Online orders",
                        selected: selectedIndex == 3,
                        onTap: () => onSelect(3),
                      ),
                      DrawerItem(
                        icon: Icons.qr_code_2,
                        label: "Codes",
                        selected: selectedIndex == 4,
                        onTap: () => onSelect(4),
                      ),
                      DrawerItem(
                        icon: Icons.settings_outlined,
                        label: "Settings",
                        selected: selectedIndex == 5,
                        onTap: () => onSelect(5),
                      ),
                      DrawerItem(
                        icon: Icons.info_outline,
                        label: "About",
                        selected: selectedIndex == 6,
                        onTap: () => onSelect(6),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.logout, color: Colors.white),
                          SizedBox(width: 10),
                          Text(
                            "Logout",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  static const Color teal = Color(0xFF0B8F87);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onTap,
        child: Container(
          height: 52,
          decoration: BoxDecoration(
            color: selected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              const SizedBox(width: 14),
              Icon(icon, size: 22, color: selected ? teal : Colors.white),
              const SizedBox(width: 14),
              Text(
                label,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.w500,
                  color: selected ? teal : Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
