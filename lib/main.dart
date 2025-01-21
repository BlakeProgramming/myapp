// Suggested code may be subject to a license. Learn more: ~LicenseLog:2569165363.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3953645118.
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: UserCredentialsInputScreen(), // Updated to the new input screen
      ),
    );
  }
}

class UserCredentialsInputScreen extends StatefulWidget {
  @override
  _UserCredentialsInputScreenState createState() =>
      _UserCredentialsInputScreenState();
}

class _UserCredentialsInputScreenState
    extends State<UserCredentialsInputScreen> {
  // Variables to store the username and password
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your username',
            ),
            textAlign: TextAlign.center, // Center the text within the box
            onChanged: (value) {
              setState(() {
                username = value; // Update the username variable
              });
            },
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
            ),
            textAlign: TextAlign.center, // Center the text within the box
            obscureText: true, // Mask the password input
            onChanged: (value) {
              setState(() {
                password = value; // Update the password variable
              });
            },
          ),
          SizedBox(height: 30),
          Text(
            'Username, Password: $username, $password', // Display username and password
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

