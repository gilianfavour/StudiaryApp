import 'dart:async'; 
import 'package:flutter/material.dart'; 


class SplashScreen extends StatefulWidget { 
  const SplashScreen({super.key});
  @override 
  SplashScreenState createState() => SplashScreenState(); 
}

class SplashScreenState extends State<SplashScreen> { 
   bool _visible = false;

  @override 
  void initState() { 
  super.initState(); 

    // Fade in logo
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() => _visible = true);
    });
 
    // Move to Onboarding after 3 seconds 
   Timer(const Duration(seconds: 8), () { 
  Navigator.pushReplacementNamed(context, "/onboarding");
});

} 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF78BCF4), Color.fromARGB(255, 96, 198, 235)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: const Duration(seconds: 2),
                child: Image.asset('images/logo3.png', height: 120),
              ),
              const SizedBox(height: 20),
              const Text(
                "Studiary",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      offset: Offset(1.5, 1.5),
                      blurRadius: 2.0,
                      color: Colors.black26,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}