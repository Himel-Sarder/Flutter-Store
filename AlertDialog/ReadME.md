<img width="356" height="730" alt="image" src="https://github.com/user-attachments/assets/ba8d52c9-f81f-4506-acab-123a69b8b5f4" />


## `AlertDialog` – Overview

`AlertDialog` is a Material Design dialog used to show **important information**, **warnings**, or **user actions** (OK, Cancel, etc.).

```dart
AlertDialog(
  title: Text('Title'),
  content: Text('Message'),
  actions: [],
);
```

## `AlertDialog` Properties Table

| Property                   | Type                  | Description               | Common Use          |
| -------------------------- | --------------------- | ------------------------- | ------------------- |
| `title`                    | `Widget?`             | Top heading of the dialog | Title text or icon  |
| `content`                  | `Widget?`             | Main body of the dialog   | Message, form, info |
| `actions`                  | `List<Widget>?`       | Buttons at bottom         | OK, Cancel          |
| `actionsAlignment`         | `MainAxisAlignment?`  | Aligns action buttons     | Center, end         |
| `actionsPadding`           | `EdgeInsetsGeometry?` | Padding around actions    | Spacing control     |
| `actionsOverflowDirection` | `VerticalDirection?`  | Direction when overflow   | Vertical layout     |
| `contentPadding`           | `EdgeInsetsGeometry?` | Padding inside content    | Inner spacing       |
| `titlePadding`             | `EdgeInsetsGeometry?` | Padding around title      | Title spacing       |
| `icon`                     | `Widget?`             | Icon shown above title    | Warning, info       |
| `iconPadding`              | `EdgeInsetsGeometry?` | Padding around icon       | Layout tuning       |
| `iconColor`                | `Color?`              | Color of icon             | Theming             |
| `shape`                    | `ShapeBorder?`        | Dialog border shape       | Rounded corners     |
| `backgroundColor`          | `Color?`              | Background color          | Dark/light theme    |
| `elevation`                | `double?`             | Shadow depth              | Visual depth        |
| `scrollable`               | `bool`                | Makes content scrollable  | Long content        |
| `insetPadding`             | `EdgeInsets?`         | Space from screen edges   | Dialog size         |
| `semanticLabel`            | `String?`             | Accessibility label       | Screen readers      |
| `clipBehavior`             | `Clip`                | Content clipping          | Prevent overflow    |

## Example using major properties

```dart
AlertDialog(
  icon: Icon(Icons.warning, color: Colors.red),
  title: const Text('Delete Item'),
  content: const Text('Are you sure you want to delete this item?'),
  backgroundColor: Colors.white,
  elevation: 8,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
  ),
  actionsAlignment: MainAxisAlignment.end,
  actions: [
    TextButton(
      onPressed: () => Navigator.pop(context),
      child: const Text('Cancel'),
    ),
    ElevatedButton(
      onPressed: () {},
      child: const Text('Delete'),
    ),
  ],
);
```

## `AlertDialog` vs `SimpleDialog`

| Feature              | AlertDialog | SimpleDialog |
| -------------------- | ----------- | ------------ |
| Buttons              | Yes         | Optional     |
| Confirmation dialogs | Best        | Not ideal    |
| Title + content      | Yes         | Mostly list  |
| Complex UI           | Yes         | Limited      |

## When to use `AlertDialog`

* Confirmation (Delete, Exit)
* Warning / Error messages
* About dialog
* User decision dialogs
