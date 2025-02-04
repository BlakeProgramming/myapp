// lib/file_four.dart
import 'package:flutter/material.dart';
import 'main_test.dart'; // Import the first file to complete the loop

void main() {
  runApp(const FileFourApp());
}

class FileFourApp extends StatelessWidget {
  const FileFourApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FileFourScreen(),
    );
  }
}

class FileFourScreen extends StatelessWidget {
  const FileFourScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File Four')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to file_one.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FileOneScreen()),
            );
          },
          child: const Text('Go back to File One'),
        ),
      ),
    );
  }
}
