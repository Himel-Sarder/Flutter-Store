# Flutter Drawer Examples

A **Drawer** is a side menu that slides from the **left (or right)** of the screen.
It is used for:

* Navigation (Home, Profile, Settings)
* Showing user info
* App menu options

Commonly seen in apps like Gmail, Facebook, and other productivity apps.

---

## Basic Drawer Structure

The **Drawer** is always used **inside a `Scaffold`**.

```dart
Scaffold(
  appBar: AppBar(
    title: Text("My App"),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text(
            "Menu",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("Home"),
          onTap: () => Navigator.pop(context), // Close drawer
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Profile"),
          onTap: () => Navigator.pop(context),
        ),
      ],
    ),
  ),
  body: Center(child: Text("Home Screen")),
);
```

---

## Drawer Widgets

### 1. **Drawer**

Main container for the side menu.

```dart
drawer: Drawer()
```

---

### 2. **DrawerHeader**

The top section of the drawer, usually for **logo or user info**.

```dart
DrawerHeader(
  decoration: BoxDecoration(color: Colors.blue),
  child: Text("Header"),
)
```

---

### 3. **ListTile**

Menu items inside the drawer.

```dart
ListTile(
  leading: Icon(Icons.settings),
  title: Text("Settings"),
  onTap: () {},
)
```

---

### 4. **Closing the Drawer**

Always close the drawer when an item is tapped:

```dart
Navigator.pop(context);
```

---

## Drawer Styles Examples

### 1. Drawer with User Profile (Common Design)

```dart
DrawerHeader(
  decoration: BoxDecoration(color: Colors.green),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage("assets/images/user.jpg"),
      ),
      SizedBox(height: 10),
      Text("Himel Sarder", style: TextStyle(color: Colors.white, fontSize: 18)),
      Text("info.himelcse@email.com", style: TextStyle(color: Colors.white70)),
    ],
  ),
),
```

---

### 2. Gradient Drawer

```dart
drawer: Drawer(
  child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [Colors.purple, Colors.blue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Text('Gradient Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(
          leading: Icon(Icons.person, color: Colors.white),
          title: Text('Profile', style: TextStyle(color: Colors.white)),
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.white),
          title: Text('Logout', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  ),
),
```

---

### 3. Drawer with Background Image

```dart
drawer: Drawer(
  child: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/bg.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Text('Image Drawer', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(
          leading: Icon(Icons.home, color: Colors.white),
          title: Text('Home', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  ),
),
```

---

### 4. Rounded Drawer

```dart
drawer: ClipRRect(
  borderRadius: BorderRadius.horizontal(right: Radius.circular(170)),
  child: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(color: Colors.deepPurple),
          child: Text('Rounded Drawer', style: TextStyle(color: Colors.white, fontSize: 24)),
        ),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.white),
          title: Text('Settings', style: TextStyle(color: Colors.white)),
        ),
      ],
    ),
  ),
),
```

---

### 5. Advanced Drawer

Fully customizable drawer with **profile, menu items, and footer**.

```dart
drawer: Drawer(
  child: SafeArea(
    child: Stack(
      children: [
        Container(color: Colors.teal),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/images/user.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Himel', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white),
              title: Text('Settings', style: TextStyle(color: Colors.white)),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Version 1.0', style: TextStyle(color: Colors.white70)),
            ),
          ],
        ),
      ],
    ),
  ),
),
```

---

### Right Side Drawer

You can also create a **drawer from the right side** using `endDrawer`:

```dart
endDrawer: Drawer(
  child: Text("Right Side Drawer"),
)
```

---

## Common Mistakes

* Using `Drawer` without a `Scaffold`.
* Forgetting `Navigator.pop(context)` on item tap.
* Using too many widgets without a `ListView` (overflow issues).
* Wrong asset paths for images in `DrawerHeader`.
