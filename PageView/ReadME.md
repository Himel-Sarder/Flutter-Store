https://github.com/user-attachments/assets/a13288d5-396f-4ae2-abe3-4c075cda330b
https://github.com/user-attachments/assets/134223e6-e265-47ee-aae3-803907e5ff8d
https://github.com/user-attachments/assets/da3f45c9-0b80-4d9e-85f6-9a95235098e3
https://github.com/user-attachments/assets/93f4c300-a0e1-47e3-bf5e-3ab745e6156c

## PageView widget in Flutter

PageView is a scrollable widget that displays children as full pages and allows horizontal or vertical swiping.

Common uses include onboarding screens, image sliders, and tutorial pages.

## Basic example

```dart
PageView(
  children: [
    Container(color: Colors.red),
    Container(color: Colors.green),
    Container(color: Colors.blue),
  ],
)
```

## PageView constructor (main)

```dart
PageView({
  Axis scrollDirection = Axis.horizontal,
  bool reverse = false,
  PageController? controller,
  ScrollPhysics? physics,
  bool pageSnapping = true,
  ValueChanged<int>? onPageChanged,
  List<Widget> children = const [],
})
```

## Properties table

| Property        | Type               | Default         | Description             |
| --------------- | ------------------ | --------------- | ----------------------- |
| children        | List<Widget>       | []              | Pages to display        |
| scrollDirection | Axis               | Axis.horizontal | Scroll direction        |
| reverse         | bool               | false           | Reverse page order      |
| controller      | PageController?    | null            | Controls page position  |
| physics         | ScrollPhysics?     | default         | Scroll behavior         |
| pageSnapping    | bool               | true            | Snap to page boundaries |
| onPageChanged   | ValueChanged<int>? | null            | Callback on page change |

## PageController

PageController is used to control and listen to page changes.

```dart
PageController(
  initialPage: 0,
  keepPage: true,
  viewportFraction: 1.0,
)
```

viewportFraction less than 1.0 shows part of next page.

## PageView.builder (dynamic pages)

```dart
PageView.builder(
  itemCount: 5,
  itemBuilder: (context, index) {
    return Center(child: Text('Page $index'));
  },
)
```

## PageView vs ListView

| Feature            | PageView | ListView |
| ------------------ | -------- | -------- |
| Page-based scroll  | Yes      | No       |
| Snap behavior      | Yes      | No       |
| One page at a time | Yes      | No       |

## Common mistakes

Using PageView inside Column without Expanded
Forgetting PageController dispose in StatefulWidget
Using large widgets without lazy loading
