import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var username;
    var password;
    return Scaffold(
          body: Column(
        children: [  
          Text("login"),
          Text("Username: $username"),
          Text("Password: $password"),
        ]
      ),
    );
  }
}