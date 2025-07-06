import 'package:flutter/material.dart';

void main() {
  runApp(const FeedbackApp());
}

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Feedback Form',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade200,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      home: const FeedbackForm(),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  const FeedbackForm({super.key});

  @override
  State<FeedbackForm> createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  double rating = 5;
  String? selectedCategory;
  final categories = ['UI', 'Performance', 'Features', 'Other'];
  bool easyToUse = false;
  bool design = false;
  bool speed = false;
  bool support = false;
  bool agreeTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Flutter Feedback Form',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Name'),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Roll Number'),
              const SizedBox(height: 8),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your roll number',
                ),
              ),
              const SizedBox(height: 16),
              const Text('Enter your feedback...'),
              const SizedBox(height: 8),
              TextFormField(
                maxLines: 4,
                decoration: const InputDecoration(),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Rate your experience'),
                  Text(rating.toInt().toString()),
                ],
              ),
              Slider(
                value: rating,
                onChanged: (value) {
                  setState(() {
                    rating = value;
                  });
                },
                min: 0,
                max: 5,
                divisions: 5,
                activeColor: Colors.black,
                inactiveColor: Colors.grey.shade300,
              ),
              const SizedBox(height: 16),
              const Text('Select a category'),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedCategory,
                hint: const Text('Choose a category'),
                items: categories
                    .map((cat) => DropdownMenuItem(
                  value: cat,
                  child: Text(cat),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              const SizedBox(height: 24),
              const Text(
                'What features did you like?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              CheckboxListTile(
                value: easyToUse,
                onChanged: (val) => setState(() => easyToUse = val!),
                title: const Text("Easy to Use"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: design,
                onChanged: (val) => setState(() => design = val!),
                title: const Text("Design"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: speed,
                onChanged: (val) => setState(() => speed = val!),
                title: const Text("Speed"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: support,
                onChanged: (val) => setState(() => support = val!),
                title: const Text("Support"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              CheckboxListTile(
                value: agreeTerms,
                onChanged: (val) => setState(() => agreeTerms = val!),
                title: const Text("I agree to the terms and conditions"),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle submit
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
