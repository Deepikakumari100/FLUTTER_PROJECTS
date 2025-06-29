import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Interactive Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0D1210),
        switchTheme: SwitchThemeData(
          thumbColor: WidgetStateProperty.all(Colors.white),
          trackColor: WidgetStateProperty.all(Colors.grey.shade800),
        ),
      ),
      home: const InteractiveDemoPage(),
    );
  }
}

class InteractiveDemoPage extends StatefulWidget {
  const InteractiveDemoPage({super.key});

  @override
  State<InteractiveDemoPage> createState() => _InteractiveDemoPageState();
}

class _InteractiveDemoPageState extends State<InteractiveDemoPage> {
  int _counter = 0;
  bool _showWidget = false;
  final List<bool> _tasks = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interactive Demo'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Counter', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Tap the button to increment the counter.'),
            const SizedBox(height: 8),
            Text('Count: $_counter'),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent.shade400,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _counter++;
                  });
                },
                child: const Text('Increment'),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Toggle Visibility', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Toggle the visibility of the widget below.'),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Show Widget'),
              value: _showWidget,
              onChanged: (value) {
                setState(() {
                  _showWidget = value;
                });
              },
            ),
            if (_showWidget)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('assets/images/aesthetic_image.jpg',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            const SizedBox(height: 24),
            const Text('Task List', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('Mark tasks as completed by checking the boxes.'),
            CheckboxListTile(
              title: const Text('Task 1: Buy groceries'),
              value: _tasks[0],
              onChanged: (val) => setState(() => _tasks[0] = val!),
            ),
            CheckboxListTile(
              title: const Text('Task 2: Finish report'),
              value: _tasks[1],
              onChanged: (val) => setState(() => _tasks[1] = val!),
            ),
            CheckboxListTile(
              title: const Text('Task 3: Call mom'),
              value: _tasks[2],
              onChanged: (val) => setState(() => _tasks[2] = val!),
            ),
          ],
        ),
      ),
    );
  }
}