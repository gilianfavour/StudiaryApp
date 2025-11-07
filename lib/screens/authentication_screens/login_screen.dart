import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

   @override
  Widget build(BuildContext context) {
    // Scaffold is the base layout for every screen in Flutter
    return Scaffold(
      // SingleChildScrollView prevents overflow when keyboard appears
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20), 
          // vertical arrangement  
          child: Column(                       
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 80),      

              // App Logo
              Image.asset("images/logo3.png", height: 120),

              const SizedBox(height: 20),

              // App Title Text
              const Text(
                "Welcome Back to Studiary",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4A90E2),
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 40),

              // Form widget groups all input fields
              Form(
                child: Column(
                  children: [

                    // Email Input Field
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Password Input Field
                    TextFormField(
                      obscureText: true,    // hide password
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Forgot Password link
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/forgot");
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: const Color(0xFF4A90E2),
                          textStyle:const TextStyle(fontSize: 16),
                        ),
                        child: const Text("Forgot Password?"),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // LOGIN BUTTON
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/home");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFF5A623), // your yellow
                          foregroundColor: Colors.white,             // text color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // SIGNUP LINK
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don’t have an account? "),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "/signup");
                          },
                          style: TextButton.styleFrom(
                            foregroundColor:const Color(0xFF4A90E2),
                            textStyle:const TextStyle(fontSize: 16),
                          ),
                          child: const Text("Sign Up"),
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