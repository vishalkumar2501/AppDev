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
      home: LoginScreen(),
    );
  }
}

// Login Screen (Stateful)
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // Controllers
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String message = "";


  @override
  void dispose() {
    userIdController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void handleLogin() {
    String userId = userIdController.text.trim();
    String password = passwordController.text.trim();

    setState(() {
      if (userId == "admin" && password == "1234") {
        message = "Login Successful ✅";
      } else {
        message = "Invalid Credentials ❌";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            // USER ID FIELD
            TextField(
              controller: userIdController,
              decoration: InputDecoration(
                labelText: "User ID",
                hintText: "Enter your user ID",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // PASSWORD FIELD
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            const SizedBox(height: 25),

            // LOGIN BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: handleLogin,
                child: const Text("Login"),
              ),
            ),

            const SizedBox(height: 20),

            // OUTPUT MESSAGE
            Text(
              message.isEmpty ? "Enter credentials" : message,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}