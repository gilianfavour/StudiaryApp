import 'package:flutter/material.dart'; 
import 'screens/splash_screen.dart'; 
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';
import 'screens/authentication_screens/login_screen.dart';
import 'screens/authentication_screens/signup_screen.dart';
import 'screens/authentication_screens/forgot_passwrod_screen.dart';

void main() { 
runApp( const MyApp()); 
} 

class MyApp extends StatelessWidget { 
  const MyApp ({super.key});

  @override 
  Widget build(BuildContext context) { 
  return MaterialApp( 
    debugShowCheckedModeBanner: false, 
    title: 'Studiary', 

    // start with splash
      initialRoute: "/splash",

      // all screens registered here
      routes: {
        "/splash": (context) => const SplashScreen(),
        "/onboarding": (context) => const OnboardingScreen(),
        "/login": (context) => const LoginScreen(),
        "/signup": (context) => const SignupScreen(),
        "/forgot": (context) => const ForgotPasswordScreen(),
        "/home": (context) => const HomeScreen(),
      }, 
  ); 
  } 
} 