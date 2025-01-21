// lib/file_two.dart
import 'package:flutter/material.dart';
import 'file_three.dart'; // Import the next file

void main() {
  runApp(FileTwoApp());
}

class FileTwoApp extends StatelessWidget {
  const FileTwoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FileTwoScreen(),
    );
  }
}

class FileTwoScreen extends StatelessWidget {
  const FileTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File Two')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to file_three.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FileThreeScreen()),
            );
          },
          child: const Text('Go to File Three'),
        ),
      ),
    );
  }
}
