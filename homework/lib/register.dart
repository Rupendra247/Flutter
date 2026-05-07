import 'package:flutter/material.dart';
import 'package:homework/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController 
    usernameController = TextEditingController();
    final TextEditingController 
    passwordController = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: usernameController,
            decoration: InputDecoration(labelText: "Username"),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(labelText: "Password"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage(
                  username: usernameController.text,
                  password: passwordController.text,
                )),
              );
            },
           child : Text("Register Page"),)
        ]
      ),
    );
  }
} 