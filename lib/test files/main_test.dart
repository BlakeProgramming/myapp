// lib/file_one.dart
import 'package:flutter/material.dart';
import 'file_two.dart'; // Import the next file

void main() {
  runApp(const FileOneApp());
}

class FileOneApp extends StatelessWidget {
  const FileOneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FileOneScreen(),
    );
  }
}

class FileOneScreen extends StatelessWidget {
  const FileOneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File One')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to file_two.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FileTwoScreen()),
            );
          },
          child: const Text('Go to File Two'),
        ),
      ),
    );
  }
}
