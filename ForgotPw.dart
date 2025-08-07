import 'package:flutter/material.dart';

class ForgotPw extends StatelessWidget {
  const ForgotPw({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Reset Password",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text("Enter your email to receive reset instructions."),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // You can add logic here to send a password reset email
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Reset link sent to email")),
                );
                Navigator.pop(context);
              },
              child: const Text("Send Reset Link"),
            ),
          ],
        ),
      ),
    );
  }
}
