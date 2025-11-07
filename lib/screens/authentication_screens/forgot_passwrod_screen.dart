import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Base layout
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 20),

              // Illustration Image (new)
              Image.asset(
                "images/forgotpassword.png", // your illustration image
                height: 200,
              ),

              const SizedBox(height: 20),

              // Heading
              const Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A90E2),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // Instruction Text
              const Text(
                "Enter your email below to receive password reset instructions.",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Form
              Form(
                child: Column(
                  children: [

                    // Email input
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Submit Button
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // UI-only: show message
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Password reset email sent (UI only)"),
                            ),
                          );
                        },
                        child: const Text(
                          "Submit",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Back to Login
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Remembered your password? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/login");
                          },
                          child: const Text("Login"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
