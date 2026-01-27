**২টা পদ্ধতি**
**Recommended (Automatic)**
**Manual (Advanced, না জানলেও সমস্যা নেই)**

# Method 1: Automatic (সবচেয়ে সহজ ও সেফ)

আমরা `flutter_launcher_icons` ব্যবহার করব। এটা নিজে থেকেই সব Android size বানিয়ে দেয়।

## Step 1: Logo image প্রস্তুত করুন

* একটি **PNG image** নিন
* Size: **512×512** বা **1024×1024**
* Background transparent বা dark (আপনার app dark theme)

ধরি ফাইলের নাম:

```
assets/icon/app_icon.png
```

📁 Folder structure:

```
assets/
 └── icon/
     └── app_icon.png
```


## Step 2: pubspec.yaml আপডেট করুন

### (A) `dev_dependencies` এর নিচে add করুন:

```yaml
dev_dependencies:
  flutter_launcher_icons: ^0.13.1
```

### (B) নিচে একদম শেষে এই block add করুন:

```yaml
flutter_launcher_icons:
  android: true
  ios: false
  image_path: "assets/icon/app_icon.png"
  adaptive_icon_background: "#000000"
  adaptive_icon_foreground: "assets/icon/app_icon.png"
```

> Android-only app হলে `ios: false` রাখলেই হবে


## Step 3: Command রান করুন

টার্মিনালে প্রজেক্ট root এ চালান:

```bash
flutter pub get
flutter pub run flutter_launcher_icons
```

১০–২০ সেকেন্ড লাগবে।


## Step 4: App রান করে দেখুন

```bash
flutter run
```

এখন আপনার **GoMoon logo** launcher-এ দেখা যাবে!

---

# Method 2: Manual (জানার জন্য)

যদি ম্যানুয়ালি করতে চান:

📁 এই path গুলোতে icon replace করতে হয়:

```
android/app/src/main/res/
  mipmap-mdpi/
  mipmap-hdpi/
  mipmap-xhdpi/
  mipmap-xxhdpi/
  mipmap-xxxhdpi/
```

সবখানে `ic_launcher.png` replace করতে হয়
ভুল size দিলে app crash করতে পারে — তাই **automatic method better**।

---

## Common Problems & Fix

### Icon change হয়নি?

Try:

```bash
flutter clean
flutter run
```

### Old icon cache?

Emulator / Phone থেকে app **uninstall করে আবার run** করুন

