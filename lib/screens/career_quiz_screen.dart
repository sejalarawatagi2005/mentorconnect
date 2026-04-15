import 'package:flutter/material.dart';
import '../models/user_profile.dart';
import 'college_prediction_screen.dart';

class CareerQuizScreen extends StatefulWidget {
  const CareerQuizScreen({super.key});

  @override
  State<CareerQuizScreen> createState() => _CareerQuizScreenState();
}

class _CareerQuizScreenState extends State<CareerQuizScreen> {
  final _profile = UserProfile();
  final _electives = [
    'Mechanical',
    'Electrical',
    'Electronics',
    'Computer Science',
    'Chemical'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: const Text('Career Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Which elective did you choose this semester?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ..._electives.map((elective) {
                final isSelected = _profile.elective == elective;
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isSelected ? Colors.orange : Colors.amber,
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.all(16),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero, // Rectangular as in mockup
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _profile.elective = elective;
                      });
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        elective,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                );
              }),
              const SizedBox(height: 20),
              _buildTextField('College Preference (Optional)', (val) => _profile.collegePreference = val),
              _buildTextField('Interests (comma separated)', (val) => _profile.interests = val.split(',')),
              _buildTextField('Projects Done', (val) => _profile.projectsDone = val),
              _buildTextField('Skills', (val) => _profile.skills = val),
              _buildTextField('CGPA / Percentage', (val) => _profile.cgpa = val),
              _buildTextField('Entrance Exam Score', (val) => _profile.entranceScore = val),
              _buildTextField('Preferred Country (India/Abroad)', (val) => _profile.countryPreference = val),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CollegePredictionScreen(),
                    ),
                  );
                },
                child: const Text('Next / Submit', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, Function(String) onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
