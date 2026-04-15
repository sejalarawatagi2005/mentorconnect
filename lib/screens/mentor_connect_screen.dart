import 'package:flutter/material.dart';

class MentorScreen extends StatelessWidget {
  const MentorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mentors')),
      body: ListView(
        children: [
          // 🔥 Mentor Card 1
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
              ],
            ),
            child: Row(
              children: [
                // 🖼️ Mentor Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/image1.png',
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(width: 15),

                // 👇 Mentor Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rahul Sharma',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('IIT Mentor'),
                  ],
                ),
              ],
            ),
          ),

          // 🔥 You can add more mentors like this
        ],
      ),
    );
  }
}
