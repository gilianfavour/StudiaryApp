import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold: the base structure of a screen
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 254, 254, 254)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20), 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 60),

              // App Logo
              Image.asset("images/logo3.png", height: 120),

              const SizedBox(height: 20),

              // Heading
              const Text(
                "Create your Studiary Account",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A90E2),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Form to group input fields
              Form(
                child: Column(
                  children: [

                    // Full Name Field
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Full Name",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Email Field
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Password Field
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Confirm Password Field
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Confirm Password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // SIGN UP BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // for now: go to home screen after signup
                          Navigator.pushReplacementNamed(context, "/home");
                        },
                         style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF5A623), // yellow
                          foregroundColor: Colors.white,             // text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                         ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    

                    const SizedBox(height: 20),

                    // OR Divider
                    Row(
                      children: [
                        Expanded(
                          child: Divider(color: Colors.grey[400]),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("OR"),
                        ),
                        Expanded(
                          child: Divider(color: Colors.grey[400]),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // GOOGLE SIGN-IN BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: OutlinedButton.icon(
                        icon: Image.asset("images/google_logo.png", height: 24), 
                        label: const Text("Sign up with Google"),
                        style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black87,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(color: Colors.grey),
                      ),
                        onPressed: () {
                          // UI only, backend later
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Google Sign-In tapped")),
                          );
                        },
                      ),
                    ),

                    const SizedBox(height: 20),

                    // LOGIN LINK
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "/login");
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFF4A90E2),
                            textStyle: const TextStyle(fontSize: 16),
                          ),
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
      ),
    );
  }
}
