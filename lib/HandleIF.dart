import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root App
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputFormScreen(),
    );
  }
}

// Screen
class InputFormScreen extends StatefulWidget {
  const InputFormScreen({super.key});

  @override
  State<InputFormScreen> createState() => _InputFormScreenState();
}

class _InputFormScreenState extends State<InputFormScreen> {
  // Controller
  final TextEditingController nameController = TextEditingController();

  String output = "";

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: "Enter your name",
                hintText: "e.g. Vishal",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    output = nameController.text;
                  });
                },
                child: const Text("Submit"),
              ),
            ),

            const SizedBox(height: 20),

            Text(
              output.isEmpty
                  ? "Output will appear here"
                  : "Hello: $output",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}