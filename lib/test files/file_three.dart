// lib/file_three.dart
import 'package:flutter/material.dart';
import 'file_four.dart'; // Import the next file

void main() {
  runApp(const FileThreeApp());
}

class FileThreeApp extends StatelessWidget {
  const FileThreeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FileThreeScreen(),
    );
  }
}

class FileThreeScreen extends StatelessWidget {
  const FileThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('File Three')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to file_four.dart
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FileFourScreen()),
            );
          },
          child: const Text('Go to File Four'),
        ),
      ),
    );
  }
}
