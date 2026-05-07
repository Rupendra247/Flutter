import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalLogin extends StatelessWidget {
   LocalLogin({super.key});
     TextEditingController usernameContainer = TextEditingController();
     TextEditingController passwordContainer = TextEditingController();


  
    bool isHidden = true;
    bool isVisible = false;
    Future <void> onLogin(BuildContext context) async{
    final pref = await SharedPreferences.getInstance();

    String? savedUsername = pref.getString("username");
    String? savedPassword = pref.getString("password");

    String enterdUsername = usernameContainer.text;
    String enterdpassword = passwordContainer.text;

    if (enterdUsername == savedUsername && 
    enterdpassword == savedPassword){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListView())
      );
    } else{
      ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: 
      Text("Login failed")));
    }
    }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
                children: [
          TextField(
            controller: usernameContainer,
            decoration: InputDecoration(
              labelText: "Username",
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            controller: passwordContainer,
            obscureText: isHidden,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              suffixIcon: IconButton(
                onPressed: () {
                },
                icon: isHidden
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              onLogin(context);
            }, 
            child: Text("login"))
        ],
      ),
    );
  }
}