## What `ListView` is

* A **scrollable list of widgets** arranged **vertically or horizontally**.
* Automatically **scrolls if the content is larger than the screen**.
* Can be **static** (all items defined at once) or **dynamic** (built on demand).
* Can handle **very large lists efficiently** using `ListView.builder`.

### Types of `ListView`

1. **ListView (default constructor)**

   ```dart
   ListView(
     children: [
       Text('Item 1'),
       Text('Item 2'),
       Text('Item 3'),
     ],
   )
   ```

   * Good for **small static lists**.
   * Builds **all items at once**.

2. **ListView.builder**

   ```dart
   ListView.builder(
     itemCount: 100,
     itemBuilder: (context, index) {
       return ListTile(
         title: Text('Item ${index + 1}'),
       );
     },
   )
   ```

   * Good for **large or infinite lists**.
   * Builds **items on demand**, saving memory.

3. **ListView.separated**

   ```dart
   ListView.separated(
     itemCount: 10,
     itemBuilder: (context, index) => Text('Item ${index + 1}'),
     separatorBuilder: (context, index) => Divider(),
   )
   ```

   * Adds **dividers or spacing** between items automatically.

4. **ListView.custom**

   * Fully customizable with `SliverChildDelegate`.


### Key Features

* Scrollable **vertically (default)** or **horizontally**.
* Can reverse scroll order (`reverse: true`).
* Supports **custom scroll physics** (`BouncingScrollPhysics`, `ClampingScrollPhysics`, etc.).
* Supports **padding**, **controllers**, **shrinkWrap**, and **keyboard dismissal**.
* Efficient with large datasets using `builder` or `separated`.

### When to use

* Menu lists
* Chat message lists
* Dynamic item lists (from API)
* Settings or option screens
* Any scrollable vertical or horizontal content

## ListView Properties Table

| Property                  | Type                                | Default                   | Description                                                                                                                        |
| ------------------------- | ----------------------------------- | ------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| `children`                | `List<Widget>`                      | null                      | The list of widgets to display. Use only for `ListView(children: [...])`.                                                          |
| `itemBuilder`             | `IndexedWidgetBuilder`              | null                      | Function to build widgets on demand. Used with `ListView.builder`.                                                                 |
| `itemCount`               | `int?`                              | null                      | Number of items in the list. Required when using `ListView.builder`.                                                               |
| `scrollDirection`         | `Axis`                              | `Axis.vertical`           | Direction of scroll: vertical (default) or horizontal.                                                                             |
| `reverse`                 | `bool`                              | `false`                   | If true, scroll direction is reversed. Useful for chat UIs.                                                                        |
| `controller`              | `ScrollController?`                 | null                      | Scroll controller to manage or listen to scroll events programmatically.                                                           |
| `primary`                 | `bool?`                             | true if no controller     | Determines if this is the primary scroll view. Only one scroll view should be primary.                                             |
| `physics`                 | `ScrollPhysics?`                    | null                      | Defines scroll behavior (bounce, clamp, always scroll, never scroll). Examples: `BouncingScrollPhysics`, `ClampingScrollPhysics`.  |
| `shrinkWrap`              | `bool`                              | `false`                   | If true, ListView takes **only the space it needs**. Useful inside Column or other scrollable parent.                              |
| `padding`                 | `EdgeInsetsGeometry?`               | null                      | Padding around the list content.                                                                                                   |
| `cacheExtent`             | `double?`                           | null                      | The area before/after the visible part to **preload items** for smoother scrolling.                                                |
| `addAutomaticKeepAlives`  | `bool`                              | true                      | If true, widgets in the list **keep their state** when scrolled offscreen.                                                         |
| `addRepaintBoundaries`    | `bool`                              | true                      | If true, each child is wrapped in a repaint boundary to improve performance.                                                       |
| `addSemanticIndexes`      | `bool`                              | true                      | Controls whether semantic indexes are added for accessibility.                                                                     |
| `semanticChildCount`      | `int?`                              | null                      | Number of items for accessibility purposes. Useful for screen readers.                                                             |
| `itemExtent`              | `double?`                           | null                      | Fixed height (or width) for all children. Improves performance for large lists.                                                    |
| `prototypeItem`           | `Widget?`                           | null                      | Used to **calculate item extent** for better performance without providing `itemExtent`.                                           |
| `scrollBehavior`          | `ScrollBehavior?`                   | null                      | Customize scroll behavior across platforms. Controls overscroll, gestures, and physics.                                            |
| `keyboardDismissBehavior` | `ScrollViewKeyboardDismissBehavior` | `manual`                  | Controls if keyboard dismisses on scroll: `manual` or `onDrag`.                                                                    |
| `clipBehavior`            | `Clip`                              | `Clip.hardEdge`           | How to clip children outside the viewport. Options: `Clip.none`, `Clip.hardEdge`, `Clip.antiAlias`, `Clip.antiAliasWithSaveLayer`. |
| `dragStartBehavior`       | `DragStartBehavior`                 | `DragStartBehavior.start` | Determines when the drag gesture starts.                                                                                           |


### Notes:

1. **Use `ListView.builder`** for large or dynamic lists — it only builds visible items.
2. **Use `shrinkWrap: true`** when `ListView` is inside another scrollable widget.
3. **Use `controller`** to programmatically scroll or listen to scroll position.
4. **Use `physics`** to control scroll behavior: bouncing, clamping, always scrollable, etc.
5. **Use `itemExtent`** if all items are same size — improves performance.
6. **`reverse: true`** is handy for chat apps (latest messages at bottom).
