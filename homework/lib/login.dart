import 'package:flutter/material.dart';
import 'package:homework/register.dart';

class LoginPage extends StatelessWidget {
  String username;
  String password;
  LoginPage({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          Text("login"),
          Text("Username: $username"),
          Text("Password: $password"),
          ElevatedButton(onPressed: (){
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => Register()));
          }, 
          child: Text("navigate to register page"))

        ]
        
      ),
    );
  }
}