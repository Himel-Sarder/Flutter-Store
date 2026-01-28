- **Hive (recommended – fast, simple)**
- **SQLite (sqflite – relational data)**

# OPTION 1: HIVE (BEST FOR MOST APPS)

Notes, Tasks, Settings, Small–Medium data
Super fast
No SQL needed

## STEP 1: Dependencies

### `pubspec.yaml`

```yaml
dependencies:
  flutter:
    sdk: flutter
  hive: ^2.2.3
  hive_flutter: ^1.1.0
```

```bash
flutter pub get
```

## STEP 2: Initialize Hive (GLOBAL TEMPLATE)

### `main.dart`

```dart
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('appBox'); // offline database

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
```

## STEP 3: Database Service (REUSABLE)

### `lib/database/local_db.dart`

```dart
import 'package:hive/hive.dart';

class LocalDB {
  static final Box box = Hive.box('appBox');

  // SAVE
  static Future<void> save(String key, dynamic value) async {
    await box.put(key, value);
  }

  // READ
  static dynamic read(String key) {
    return box.get(key);
  }

  // DELETE
  static Future<void> delete(String key) async {
    await box.delete(key);
  }

  // CLEAR ALL
  static Future<void> clear() async {
    await box.clear();
  }
}
```

---

## STEP 4: Use Database Anywhere

### Example: Save & Read Data

```dart
import 'package:flutter/material.dart';
import '../database/local_db.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Offline DB')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                LocalDB.save('username', 'Himel');
              },
              child: const Text('Save'),
            ),
            ElevatedButton(
              onPressed: () {
                final name = LocalDB.read('username');
                print(name);
              },
              child: const Text('Read'),
            ),
          ],
        ),
      ),
    );
  }
}
```

---

## HIVE USE CASES

✔ Splash config
✔ Auth state
✔ Notes / Tasks
✔ Settings
✔ Cached API response

---

# OPTION 2: SQLITE (sqflite) – STRUCTURED DATA

Tables, Relations, Large datasets
Medical / Finance / Inventory apps

## STEP 1: Dependency

```yaml
dependencies:
  sqflite: ^2.3.0
  path: ^1.9.0
```

```bash
flutter pub get
```

---

## STEP 2: Database Helper (TEMPLATE)

### `lib/database/sql_db.dart`

```dart
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLDB {
  static Database? _db;

  static Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  static Future<Database> _initDB() async {
    final path = join(await getDatabasesPath(), 'app.db');

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE tasks (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            done INTEGER
          )
        ''');
      },
    );
  }

  // INSERT
  static Future<int> insert(String table, Map<String, dynamic> data) async {
    final dbClient = await db;
    return dbClient.insert(table, data);
  }

  // READ
  static Future<List<Map<String, dynamic>>> read(String table) async {
    final dbClient = await db;
    return dbClient.query(table);
  }

  // DELETE
  static Future<int> delete(String table, int id) async {
    final dbClient = await db;
    return dbClient.delete(table, where: 'id=?', whereArgs: [id]);
  }
}
```

---

## STEP 3: Use SQLite

```dart
await SQLDB.insert('tasks', {
  'title': 'Learn Flutter',
  'done': 0,
});

final tasks = await SQLDB.read('tasks');
print(tasks);
```

---

# WHICH ONE SHOULD YOU USE?

| App Type          | Database |
| ----------------- | -------- |
| Simple apps       | Hive     |
| Notes / To-do     | Hive     |
| Auth / settings   | Hive     |
| Medical / finance | SQLite   |
| Relational data   | SQLite   |

**90% Flutter apps → Hive is enough**
