import 'package:flutter/material.dart';

class CollegeListScreen extends StatelessWidget {
  const CollegeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Colleges')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/image1.png'),
            SizedBox(height: 20),
            Text('List of Colleges', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
