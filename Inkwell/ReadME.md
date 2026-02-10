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

## `InkWell` Properties Table

| Property               | Type                             | Description               |
| ---------------------- | -------------------------------- | ------------------------- |
| `child`                | `Widget`                         | Widget inside InkWell     |
| `onTap`                | `VoidCallback?`                  | Called on single tap      |
| `onDoubleTap`          | `VoidCallback?`                  | Called on double tap      |
| `onLongPress`          | `VoidCallback?`                  | Called on long press      |
| `onTapDown`            | `GestureTapDownCallback?`        | Tap start callback        |
| `onTapUp`              | `GestureTapUpCallback?`          | Tap end callback          |
| `onTapCancel`          | `VoidCallback?`                  | Tap canceled              |
| `onHover`              | `ValueChanged<bool>?`            | Mouse hover (web/desktop) |
| `onFocusChange`        | `ValueChanged<bool>?`            | Focus change              |
| `splashColor`          | `Color?`                         | Ripple color              |
| `highlightColor`       | `Color?`                         | Pressed background color  |
| `hoverColor`           | `Color?`                         | Hover background color    |
| `focusColor`           | `Color?`                         | Focus background color    |
| `borderRadius`         | `BorderRadius?`                  | Ripple corner radius      |
| `customBorder`         | `ShapeBorder?`                   | Custom ripple shape       |
| `radius`               | `double?`                        | Splash radius             |
| `containedInkWell`     | `bool`                           | Restrict ripple to bounds |
| `enableFeedback`       | `bool`                           | Sound/haptic feedback     |
| `excludeFromSemantics` | `bool`                           | Accessibility exclusion   |
| `mouseCursor`          | `MouseCursor?`                   | Cursor on hover           |
| `overlayColor`         | `MaterialStateProperty<Color?>?` | State-based overlay       |

## Most used properties (quick list)

```dart
onTap
child
splashColor
borderRadius
highlightColor
```

## Minimal example using key properties

```dart
Material(
  color: Colors.blue,
  borderRadius: BorderRadius.circular(12),
  child: InkWell(
    borderRadius: BorderRadius.circular(12),
    splashColor: Colors.white24,
    onTap: () {},
    child: const Padding(
      padding: EdgeInsets.all(16),
      child: Text('Tap me', style: TextStyle(color: Colors.white)),
    ),
  ),
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

