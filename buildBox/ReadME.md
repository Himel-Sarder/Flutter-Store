## What is `buildBox`?

`buildBox()` is a **custom function** you create that returns a widget (usually `Container`) with configurable properties.

Example use case:

* UI boxes
* Cards
* Layout blocks
* Debug layout practice

---

## buildBox Function With ALL Common Properties

```dart
Widget buildBox({
  double? width,
  double? height,
  EdgeInsetsGeometry? margin,
  EdgeInsetsGeometry? padding,
  Color? color,
  DecorationImage? image,
  BorderRadius? borderRadius,
  BoxBorder? border,
  List<BoxShadow>? boxShadow,
  AlignmentGeometry? alignment,
  BoxConstraints? constraints,
  Widget? child,
  Gradient? gradient,
  Matrix4? transform,
  AlignmentGeometry? transformAlignment,
}) {
  return Container(
    width: width,
    height: height,
    margin: margin,
    padding: padding,
    alignment: alignment,
    constraints: constraints,
    transform: transform,
    transformAlignment: transformAlignment,
    decoration: BoxDecoration(
      color: color,
      image: image,
      borderRadius: borderRadius,
      border: border,
      boxShadow: boxShadow,
      gradient: gradient,
    ),
    child: child,
  );
}
```

---

## Full Example Usage
<img width="791" height="397" alt="image" src="https://github.com/user-attachments/assets/f95fc406-4177-4d39-b116-aa764b1804d3" />

## Properties Explained Clearly

### Size

* `width`
* `height`
* `constraints`

### Spacing

* `margin`
* `padding`

### Decoration

* `color`
* `border`
* `borderRadius`
* `boxShadow`
* `gradient`
* `image`

### Alignment & Transform

* `alignment`
* `transform`
* `transformAlignment`

### Content

* `child`

---

## When to Use buildBox

Use `buildBox` when:

* You repeat similar UI boxes
* You want cleaner code
* You are learning layout and decoration
* You want reusable UI components

---

## Important Notes

* `color` **cannot** be used together with `gradient`
* If you use `decoration`, do not use `color` directly on `Container`
* Use `EdgeInsetsDirectional` only when supporting RTL layouts

