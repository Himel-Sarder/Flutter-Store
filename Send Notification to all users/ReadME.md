## OneSignal Notification : https://youtu.be/v2BzkbCC8CM?si=YMjZ--eCpqRXY_P3

# OPTION 1: Send Notification to ALL Users (Recommended)

### Step 1: Setup Firebase in Flutter

Add packages:

```yaml
dependencies:
  firebase_core: latest
  firebase_messaging: latest
```

Initialize Firebase:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
```

### Step 2: Subscribe ALL users to a topic

In your **app startup / login / splash screen**:

```dart
import 'package:firebase_messaging/firebase_messaging.dart';

void subscribeToAllUsers() async {
  await FirebaseMessaging.instance.subscribeToTopic('all_users');
}
```

Call this once:

```dart
@override
void initState() {
  super.initState();
  subscribeToAllUsers();
}
```

Now **EVERY USER is subscribed**

### Step 3: Send Notification from Firebase Console (NO CODING)

1. Go to **Firebase Console**
2. Open your project
3. Click **Messaging**
4. Click **New campaign**
5. Choose **Notification**
6. Target → **Topic**
7. Topic name → `all_users`
8. Send

DONE — notification goes to **everyone**

### Step 4: Handle notification in Flutter (foreground)

```dart
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print("Title: ${message.notification?.title}");
  print("Body: ${message.notification?.body}");
});
```
--- 

# OPTION 2: Send Notification from YOUR SERVER (Django / PHP / Node)

If you want **admin panel → send notification button**:

### Django Example (FCM HTTP API)

```python
import requests
import json

def send_notification():
    url = "https://fcm.googleapis.com/fcm/send"

    headers = {
        "Authorization": "key=YOUR_SERVER_KEY",
        "Content-Type": "application/json"
    }

    payload = {
        "to": "/topics/all_users",
        "notification": {
            "title": "Important Update",
            "body": "New feature added!"
        }
    }

    response = requests.post(url, headers=headers, data=json.dumps(payload))
    print(response.json())
```

This sends to **ALL USERS instantly**.

---

# Important Security Rule

NEVER put `server key` inside Flutter app
Keep it on server (Django / PHP / Node)

---

# OPTION 3: Local Notification (NOT for all users)

Only for:

* reminders
* alarms
* offline messages

Not suitable for “send to all users”

---

## Which one YOU should use?

| Goal                 | Best Method                 |
| -------------------- | --------------------------- |
| Notify all users     | **FCM Topic (`all_users`)** |
| Notify specific user | Device Token                |
| Admin sends message  | Django + FCM                |
| Offline reminder     | Local Notification          |
