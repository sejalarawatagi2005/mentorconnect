import 'package:flutter/material.dart';
import '../models/college.dart';
import '../widgets/college_card.dart';
import 'mentor_connect_screen.dart';

class CollegePredictionScreen extends StatelessWidget {
  const CollegePredictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<College> mockColleges = [
      College(name: "BVB", probability: 75, image: "college1.jpg"),
      College(name: "KLE", probability: 50, image: "college2.jpg"),
    ];

    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: const Text('List of colleges', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: mockColleges.length,
                itemBuilder: (context, index) {
                  return CollegeCard(college: mockColleges[index]);
                },
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.black,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MentorConnectScreen(),
                    ),
                  );
                },
                child: const Text(
                  'Connect with Mentor',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
