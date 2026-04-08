import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // 🔵 AppBar
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),

      // 🧍 Body
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Welcome Vishal 🚀",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Button Clicked 🚀"),
                  ),
                );
              },
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),

      // ➕ Floating Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("FAB Clicked 🔥"),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}