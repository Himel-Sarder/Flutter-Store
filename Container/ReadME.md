<img width="358" height="739" alt="image" src="https://github.com/user-attachments/assets/007d1131-92fe-4050-afcd-c9c95a4cebb6" />

<img width="748" height="469" alt="image" src="https://github.com/user-attachments/assets/75d661ad-0df9-464a-bbc2-2738ff5c2e5b" />
<img width="357" height="738" alt="image" src="https://github.com/user-attachments/assets/cb56d1f4-a5aa-4eea-9794-b94e04b238a9" />
<img width="752" height="524" alt="image" src="https://github.com/user-attachments/assets/840c48ed-7c0c-49a1-936d-29fd5e5bd91e" />
<img width="354" height="739" alt="image" src="https://github.com/user-attachments/assets/9ec09c36-9f22-4581-8fec-dfd3e98f4f90" />
<img width="811" height="660" alt="image" src="https://github.com/user-attachments/assets/eaed3170-59ab-4a67-982e-3c953e5cc3f8" />
<img width="360" height="739" alt="image" src="https://github.com/user-attachments/assets/db67f374-b6b6-4c9a-adc5-79e2c9f5e9de" />
<img width="826" height="719" alt="image" src="https://github.com/user-attachments/assets/d7d94d0f-9218-4eec-9ae1-f8476c3d1ddb" />
<img width="358" height="738" alt="image" src="https://github.com/user-attachments/assets/3016eb45-c50f-4464-9bc6-e0693de03a9b" />
<img width="935" height="657" alt="image" src="https://github.com/user-attachments/assets/cdaa211e-8081-4252-965c-5bb621260203" />
<img width="360" height="739" alt="image" src="https://github.com/user-attachments/assets/74d30972-5864-4966-902e-246865e1905a" />
<img width="947" height="715" alt="image" src="https://github.com/user-attachments/assets/cf4a198d-0b4b-4bcb-ba5a-40a56eda1b9d" />
<img width="361" height="739" alt="image" src="https://github.com/user-attachments/assets/4b2a5f5d-6d65-45be-a6f2-09c5ad0fa4b1" />
<img width="926" height="715" alt="image" src="https://github.com/user-attachments/assets/4d4c2901-e70a-4803-a704-ca85540ac30c" />
<img width="357" height="735" alt="image" src="https://github.com/user-attachments/assets/2e80de3f-43ea-46a1-99df-3a5e35b924ee" />


# 1. What is `Container`?

> **Container** is a convenience widget used to **decorate, position, size, and transform** a child widget.

Think of it as:

* a **box**
* a **div** (HTML)
* a **layout + decoration wrapper**

---

# 2. Basic Container Structure

```dart
Container(
  child: Text('Hello'),
);
```

---

# 3. Size Properties

### `width`

```dart
width: 200,
```

### `height`

```dart
height: 100,
```

---

# 4. Padding & Margin

### `padding` (inside space)

```dart
padding: EdgeInsets.all(16),
```

### `margin` (outside space)

```dart
margin: EdgeInsets.symmetric(horizontal: 10),
```

---

# 5. Alignment

### `alignment`

Aligns **child inside container**

```dart
alignment: Alignment.center,
```

Common values:

* `Alignment.topLeft`
* `Alignment.center`
* `Alignment.bottomRight`

---

# 6. Color (Simple Background)

```dart
color: Colors.blue,
```

Cannot use `color` **together with `decoration`**

---

# 7. Decoration (MOST POWERFUL)

```dart
decoration: BoxDecoration(
  color: Colors.red,
  borderRadius: BorderRadius.circular(12),
),
```

---

## BoxDecoration Properties

### `color`

```dart
color: Colors.green,
```

### `border`

```dart
border: Border.all(
  color: Colors.black,
  width: 2,
),
```

### `borderRadius`

```dart
borderRadius: BorderRadius.circular(20),
```

---

### `boxShadow`

```dart
boxShadow: [
  BoxShadow(
    color: Colors.black26,
    blurRadius: 10,
    offset: Offset(0, 5),
  ),
],
```

---

### `gradient`

```dart
gradient: LinearGradient(
  colors: [Colors.blue, Colors.purple],
),
```

---

### `image`

```dart
image: DecorationImage(
  image: AssetImage('assets/bg.png'),
  fit: BoxFit.cover,
),
```

---

# 8. Constraints

Control min/max size

```dart
constraints: BoxConstraints(
  minWidth: 100,
  maxWidth: 300,
),
```

---

# 9. Transform

Rotate / scale / translate

```dart
transform: Matrix4.rotationZ(0.1),
```

---

# 10. Clip Behavior

```dart
clipBehavior: Clip.hardEdge,
```

Used with border radius.

---

# 11. Child

```dart
child: Text('Inside Container'),
```

---

# 12. Full Example (Professional Use)

```dart
Container(
  width: 250,
  height: 120,
  margin: EdgeInsets.all(12),
  padding: EdgeInsets.all(16),
  alignment: Alignment.center,
  decoration: BoxDecoration(
    color: Colors.deepPurple,
    borderRadius: BorderRadius.circular(16),
    boxShadow: [
      BoxShadow(
        color: Colors.black38,
        blurRadius: 8,
        offset: Offset(0, 4),
      ),
    ],
  ),
  child: Text(
    'Welcome Himel',
    style: TextStyle(fontSize: 18, color: Colors.white),
  ),
);
```

---

# 13. Common Mistakes

Using `color` + `decoration` together
Overusing `Container` (use `Padding`, `SizedBox` when possible)

---

# 14. Container vs Others

| Widget         | Use             |
| -------------- | --------------- |
| `Container`    | All-in-one      |
| `Padding`      | Only spacing    |
| `SizedBox`     | Only size       |
| `DecoratedBox` | Only decoration |
| `Align`        | Only alignment  |
