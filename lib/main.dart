import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
    
}
// import 'package:flutter/material.dart';

// void main() {
//  runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//  const MyApp({super.key});

//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        appBar: AppBar(title: Text("Tap Example")),
//        body: Center(
//          child: GestureDetector(
//            onTap: () {
//              print("Container tapped!");
             
//            },
//            child: Container(
//              height: 100,
//              width: 100,
//              color: Colors.blue,
//              child: Center(child: Text("Tap Me")),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
// }