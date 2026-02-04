<img width="353" height="733" alt="image" src="https://github.com/user-attachments/assets/08d33ec2-3b95-4d54-97a9-9831bbfbb91f" />

## What is Stack used for?

* Overlapping widgets (image + text, badge on icon)
* Floating buttons over images
* Custom UI designs
* Background + foreground elements


## Basic Example

```dart
Stack(
  children: [
    Container(width: 200, height: 200, color: Colors.blue),
    Positioned(
      top: 20,
      left: 20,
      child: Text(
        'Hello',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    ),
  ],
)
```

## Stack Constructor

```dart
Stack({
  Key? key,
  AlignmentGeometry alignment = AlignmentDirectional.topStart,
  TextDirection? textDirection,
  StackFit fit = StackFit.loose,
  Clip clipBehavior = Clip.hardEdge,
  List<Widget> children = const <Widget>[],
})
```

## Example: Image with Text Overlay

```dart
Stack(
  children: [
    Image.asset('assets/bg.jpg'),
    Positioned(
      bottom: 10,
      left: 10,
      child: Text(
        'Beautiful View',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          backgroundColor: Colors.black54,
        ),
      ),
    ),
  ],
)
```


## Stack vs Column/Row

| Widget | Purpose            |
| ------ | ------------------ |
| Row    | Horizontal layout  |
| Column | Vertical layout    |
| Stack  | Overlapping layout |


## Stack Widget – Properties Table

| Property        | Type                | Default                         | Description                                                                |
| --------------- | ------------------- | ------------------------------- | -------------------------------------------------------------------------- |
| `children`      | `List<Widget>`      | `const []`                      | List of widgets placed on top of each other. First is bottom, last is top. |
| `alignment`     | `AlignmentGeometry` | `AlignmentDirectional.topStart` | Aligns **non-positioned** children inside the stack.                       |
| `fit`           | `StackFit`          | `StackFit.loose`                | Determines how non-positioned children are sized.                          |
| `clipBehavior`  | `Clip`              | `Clip.hardEdge`                 | Controls whether content overflowing the stack is clipped.                 |
| `textDirection` | `TextDirection?`    | `null`                          | Direction for resolving `AlignmentDirectional` (LTR / RTL).                |

## StackFit Values

| Value                  | Meaning                             |
| ---------------------- | ----------------------------------- |
| `StackFit.loose`       | Children keep their own size        |
| `StackFit.expand`      | Children fill the Stack             |
| `StackFit.passthrough` | Parent constraints pass to children |

## Clip Values

| Value                         | Description                     |
| ----------------------------- | ------------------------------- |
| `Clip.none`                   | No clipping (allows overflow)   |
| `Clip.hardEdge`               | Clips sharply (default)         |
| `Clip.antiAlias`              | Smooth edges                    |
| `Clip.antiAliasWithSaveLayer` | Smooth edges + performance cost |

## Alignment Common Values

| Alignment               | Position     |
| ----------------------- | ------------ |
| `Alignment.topLeft`     | Top-left     |
| `Alignment.topCenter`   | Top-center   |
| `Alignment.center`      | Center       |
| `Alignment.bottomRight` | Bottom-right |

## Positioned Widget – Properties Table

| Property | Type      | Description          |
| -------- | --------- | -------------------- |
| `top`    | `double?` | Distance from top    |
| `left`   | `double?` | Distance from left   |
| `right`  | `double?` | Distance from right  |
| `bottom` | `double?` | Distance from bottom |
| `width`  | `double?` | Fixed width          |
| `height` | `double?` | Fixed height         |
| `child`  | `Widget`  | Widget to position   |

### Key Notes (Very Important)

* `alignment` works **only for non-Positioned widgets**
* `Positioned` overrides `alignment`
* Stack renders widgets **in order**
* Stack does **not scroll**
