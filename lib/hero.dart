import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

// 🔹 First Screen
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hero Animation")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SecondScreen()),
            );
          },
          child: Hero(
            tag: 'imageHero',
            child: Image.asset(
              'assets/images/img.jpg', // ✅ local image
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

// 🔹 Second Screen
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Hero(
          tag: 'imageHero',
          child: Image.asset(
            'assets/images/img.jpg', // ✅ same image
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}