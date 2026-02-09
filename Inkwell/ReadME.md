## What InkWell does

* Detects taps, double taps, long press, hover
* Shows **ripple animation** on touch
* Must be inside a **Material widget** to work properly

## Basic InkWell example

```dart
InkWell(
  onTap: () {
    print('Tapped');
  },
  child: Padding(
    padding: const EdgeInsets.all(16),
    child: Text('Tap me'),
  ),
)
```

## InkWell with Container (important)

Ripple won’t show unless there’s a `Material` ancestor.

```dart
Material(
  color: Colors.blue,
  child: InkWell(
    onTap: () {},
    child: const Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        'Button',
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
)
```

## Common InkWell callbacks

| Callback      | Trigger                   |
| ------------- | ------------------------- |
| `onTap`       | Single tap                |
| `onDoubleTap` | Double tap                |
| `onLongPress` | Long press                |
| `onTapDown`   | Tap started               |
| `onTapUp`     | Tap released              |
| `onTapCancel` | Tap canceled              |
| `onHover`     | Mouse hover (web/desktop) |

## Styling InkWell

### Border radius (match container shape)

```dart
InkWell(
  borderRadius: BorderRadius.circular(12),
  onTap: () {},
  child: Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
    ),
    child: const Text('Rounded InkWell'),
  ),
)
```

### Splash & highlight color

```dart
InkWell(
  splashColor: Colors.red.withOpacity(0.3),
  highlightColor: Colors.transparent,
  onTap: () {},
  child: const Text('Custom ripple'),
)
```

## InkWell vs GestureDetector

| Feature         | InkWell  | GestureDetector |
| --------------- | -------- | --------------- |
| Ripple effect   | Yes      | No              |
| Material design | Yes      | No              |
| Tap detection   | Yes      | Yes             |
| UI feedback     | Built-in | Manual          |

Use:

* **InkWell** → Material UI, visual feedback
* **GestureDetector** → pure logic, custom UI

## Common use cases

* Clickable cards
* Custom buttons
* List items
* Icons with ripple effect


## Common mistakes

* No `Material` ancestor → ripple invisible
* Forgetting `borderRadius` → ripple overflows
* Using `Container` color instead of `Material`

