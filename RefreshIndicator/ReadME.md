

https://github.com/user-attachments/assets/871a90cd-e95e-40c1-9f48-9a00b2da3a48

## What is `RefreshIndicator`?

`RefreshIndicator` is a widget that adds **pull-to-refresh functionality** to a scrollable widget (usually `ListView` or `SingleChildScrollView`).

It shows a **circular progress indicator** at the top when the user pulls down and triggers a callback (`onRefresh`) to perform an action, like fetching new data.

**Key points:**

* `AlwaysScrollableScrollPhysics` is required if your list is small to **allow pull even when content fits the screen**.
* `_onRefresh` is an **async function** that returns `Future<void>`.


## Properties of `RefreshIndicator`

| Property                | Type                                              | Default                            | Description                                                        |
| ----------------------- | ------------------------------------------------- | ---------------------------------- | ------------------------------------------------------------------ |
| `child`                 | Widget                                            | required                           | The scrollable widget (`ListView`, `SingleChildScrollView`, etc.)  |
| `onRefresh`             | `Future<void> Function()`                         | required                           | Callback executed when the user triggers refresh                   |
| `displacement`          | `double`                                          | 40.0                               | Distance the indicator is dragged down from its original position  |
| `edgeOffset`            | `double`                                          | 0.0                                | Vertical offset where the indicator starts (useful with AppBar)    |
| `color`                 | `Color`                                           | Theme accent                       | The color of the refresh indicator                                 |
| `backgroundColor`       | `Color`                                           | transparent                        | Background of the circular progress indicator                      |
| `notificationPredicate` | `ScrollNotification Function(ScrollNotification)` | default scroll notification filter | Determines which scroll notifications should trigger the indicator |
| `semanticsLabel`        | `String`                                          | null                               | Accessibility label for the indicator                              |
| `semanticsValue`        | `String`                                          | null                               | Accessibility value for the indicator                              |
| `strokeWidth`           | `double`                                          | 2.0                                | Width of the circular progress indicator stroke                    |


## Example with Custom Properties

```dart
RefreshIndicator(
  onRefresh: _onRefresh,
  displacement: 80, // pull down distance
  edgeOffset: 50, // start offset (useful with AppBar)
  color: Colors.white, // indicator color
  backgroundColor: Colors.blue, // indicator background
  strokeWidth: 3,
  child: ListView.builder(
    physics: const AlwaysScrollableScrollPhysics(),
    itemCount: 10,
    itemBuilder: (context, index) {
      return ListTile(title: Text('Item ${index + 1}'));
    },
  ),
)
```

## How it works

1. User pulls down on the scrollable widget.
2. `RefreshIndicator` detects the pull gesture via `ScrollNotification`.
3. Circular progress indicator appears at the top.
4. `onRefresh` async callback runs.
5. Once `onRefresh` completes, the indicator disappears.

## Best Practices

* Always combine with **`AlwaysScrollableScrollPhysics()`** if content is small.
* Keep `onRefresh` **async**.
* Use `edgeOffset` if you have a fixed AppBar to prevent overlap.
* Avoid wrapping **non-scrollable widgets** (e.g., `Column`) unless inside `SingleChildScrollView`.
* Avoid heavy operations inside `onRefresh` that block UI; use async + await.

## Common Mistakes

1. Not using `AlwaysScrollableScrollPhysics` → refresh doesn’t work on small lists.
2. Using a non-scrollable child → nothing happens.
3. `onRefresh` not returning `Future<void>` → compilation error.
4. Not using async operations properly → refresh indicator disappears immediately.
