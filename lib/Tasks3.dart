import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("AppBar Example"),
        ),

        body: Center(
          child: Text(
            "Hello World VISHAL BHAI ",
            style: TextStyle(fontSize: 25),
          ),
        ),

      ),
    );
  }
}



// flutter run -d chrome -t lib/Tasks3.dart