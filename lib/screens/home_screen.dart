import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Studiary',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Greeting Section
            Text(
              "Good Morning!",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Text(
              "Plan smart. Stay consistent. Achieve more.",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),

            SizedBox(height: 24),

            /// Quick Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildQuickCard(Icons.book, "Assignments"),
                buildQuickCard(Icons.calendar_month, "Calendar"),
                buildQuickCard(Icons.timer, "Pomodoro"),
                buildQuickCard(Icons.star, "Habits"),
              ],
            ),

            SizedBox(height: 28),

            Text(
              "Upcoming tasks",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
            SizedBox(height: 12),

            Expanded(
              child: ListView(
                children: [
                  buildTaskItem("Mobile App Assignment", "Due: Tomorrow"),
                  buildTaskItem("Machine Learning Research", "Due: Friday"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildQuickCard(IconData icon, String label) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0xFF4A90E2), // your primary blue
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 6),
        Text(label, style: TextStyle(fontSize: 13))
      ],
    );
  }

  Widget buildTaskItem(String title, String deadline) {
    return Container(
      margin: EdgeInsets.only(bottom: 14),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 6,
            offset: Offset(0, 2),
            color: Colors.black.withValues(alpha: 0.05),
          )
        ],
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          Text(deadline, style: TextStyle(fontSize: 13, color: Colors.grey[600])),
        ],
      ),
    );
  }
}
