// Suggested code may be subject to a license. Learn more: ~LicenseLog:2656579645.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:100710829.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1198816190.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2524387758.

import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  bool _buttonPressed = false;

  void _onButtonPressed() {
    setState(() {
      _buttonPressed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (_buttonPressed)
                const Text(
                  'Congratulations!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _onButtonPressed,
                child: const Text('Press Me!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
