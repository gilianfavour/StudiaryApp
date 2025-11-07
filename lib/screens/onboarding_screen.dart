import 'package:flutter/material.dart'; 

class OnboardingScreen extends StatefulWidget { 
  const OnboardingScreen ({super.key});

  @override 
  OnboardingScreenState createState() => OnboardingScreenState(); 
} 

class OnboardingScreenState extends State<OnboardingScreen> { 
  final PageController _controller = PageController(); 
  bool isLastPage = false; 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 233, 252), 
      body: Padding( 
        padding: EdgeInsets.all(20), 
        child: PageView( 
          controller: _controller, 
          onPageChanged: (index) { 
            setState(() => isLastPage = index == 2); 
          }, 
          children: [ 
            buildPage( 
              image: 'images/animated_planner.png', 
              title: 'VISUALIZE YOUR SUCCESS', 
              description: 'Map out your entire semster, set deadline, and track your progress at a glance.', 
            ), 
            buildPage( 
              image: 'images/focus.png', 
              title: 'DEEP FOCUS, NO DESTRUCTIONS', 
              description: 'Use the built in Pomoodoro Timer and focus insights to truly master your study sessions.', 
            ), 
            buildPage( 
              image: 'images/progress.png', 
              title: 'TRACK PROGRESS, CELEBRATE WINS', 
              description: 'Track your study streeks, log your habits, and get motivating insights to build discipline.', 
            ), 
          ], 
        ), 
      ), 
      bottomSheet: isLastPage 
          ? TextButton( 
              onPressed: () { 
                Navigator.pushReplacementNamed( 
                  context, 
                  "/login"
                ); 
              }, 
              child: Container( 
                width: double.infinity, 
                height: 60, 
                color: Color(0xFFF5A623), 
                alignment: Alignment.center, 
                child: Text( 
                  'Get Started', 
                  style: TextStyle(color: Colors.white, fontSize: 20), 
                ), 
              ), 
            ) 
          : SizedBox( 
              height: 60, 
              child: Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [ 
                  TextButton( 
                    child: Text('Skip', style: TextStyle(color: Color(0xFF4A90E2))), 
                    onPressed: () => _controller.jumpToPage(2), 
                  ), 
                  Row( 
                    children: [ 
                      TextButton( 
                        child: Text('Next', style: TextStyle(color: Color(0xFF4A90E2))), 
                        onPressed: () => _controller.nextPage( 
                          duration: Duration(milliseconds: 500), 
                          curve: Curves.easeInOut, 
                        ), 
                      ), 
                    ], 
                  ), 
                ], 
              ), 
            ), 
    ); 
  } 
 
  Widget buildPage({ 
    required String image, 
    required String title, 
    required String description, 
  }) { 
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [ 
        Image.asset(image, height: 300), 
        SizedBox(height: 30), 

        Text( 
          title, 
          style: TextStyle(
            fontSize: 26, 
            fontWeight: FontWeight.bold,
            color: Color(0xFF4A90E2)), 
        ), 
        SizedBox(height: 15), 
        Text( 
          description, 
          textAlign: TextAlign.center, 
          style: TextStyle(fontSize: 18, 
          color: Colors.grey[600]), 
        ), 
      ], 
    ); 
  } 
} 