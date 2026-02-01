import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  void onClick(String name) {
    debugPrint('$name button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Buttons Demo')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Elevated Button
            ElevatedButton(
              onPressed: () => onClick('Elevated'),
              child: const Text('Elevated Button'),
            ),

            const SizedBox(height: 12),

            // Text Button
            TextButton(
              onPressed: () => onClick('Text'),
              child: const Text('Text Button'),
            ),

            const SizedBox(height: 12),

            // Outlined Button
            OutlinedButton(
              onPressed: () => onClick('Outlined'),
              child: const Text('Outlined Button'),
            ),

            const SizedBox(height: 12),

            // Icon Button
            IconButton(
              onPressed: () => onClick('Icon'),
              icon: const Icon(Icons.favorite),
            ),

            const Divider(),

            // Elevated Button with Icon
            ElevatedButton.icon(
              onPressed: () => onClick('Elevated Icon'),
              icon: const Icon(Icons.send),
              label: const Text('Send'),
            ),

            const SizedBox(height: 12),

            // FAB Extended (normal usage inside screen)
            FloatingActionButton.extended(
              onPressed: () => onClick('FAB Extended'),
              icon: const Icon(Icons.add),
              label: const Text('Add Item'),
            ),

            const Divider(),

            // Cupertino Button (iOS)
            CupertinoButton(
              onPressed: () => onClick('Cupertino'),
              child: const Text('Cupertino Button'),
            ),

            const Divider(),

            // InkWell Button
            InkWell(
              onTap: () => onClick('InkWell'),
              child: Container(
                padding: const EdgeInsets.all(14),
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'InkWell Button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // GestureDetector Button
            GestureDetector(
              onTap: () => onClick('GestureDetector'),
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: const Center(child: Text('GestureDetector Button')),
              ),
            ),

            const Divider(),

            // Toggle Buttons
            ToggleButtons(
              isSelected: const [true, false, false],
              onPressed: (index) => onClick('Toggle $index'),
              children: const [
                Icon(Icons.list),
                Icon(Icons.grid_view),
                Icon(Icons.map),
              ],
            ),

            const Divider(),

            // Popup Menu Button
            PopupMenuButton(
              onSelected: (value) => onClick(value.toString()),
              itemBuilder: (context) => const [
                PopupMenuItem(value: 'Edit', child: Text('Edit')),
                PopupMenuItem(value: 'Delete', child: Text('Delete')),
              ],
            ),

            const Divider(),

            // Dropdown Button
            DropdownButton<String>(
              value: 'A',
              items: const [
                DropdownMenuItem(value: 'A', child: Text('Option A')),
                DropdownMenuItem(value: 'B', child: Text('Option B')),
              ],
              onChanged: (value) => onClick('Dropdown $value'),
            ),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Yes'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('No'),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        'Confirm',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 48,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('Cancel'),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.check),
                    label: const Text('Approve'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.close),
                    label: const Text('Reject'),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Accept'),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: 120,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Decline'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
