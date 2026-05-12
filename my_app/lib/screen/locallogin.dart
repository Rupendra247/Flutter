import 'package:flutter/material.dart';
import 'package:my_app/screen/dashbord.dart';
import 'package:my_app/screen/logout.dart';
import 'package:my_app/screen/profile.dart';
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
        MaterialPageRoute(builder: (context) => Profile())
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
      appBar: AppBar(
        title: Text("AttenX"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
                  children: [
                    SizedBox(height: 110),
              TextField(
                controller: usernameContainer,
                decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: (){
                  onLogin(context);
                }, 
                child: Text("login",style: TextStyle(color: Colors.blue),)),
                 SizedBox(height: 30),
              Text("Forget Password" ,
              style: TextStyle(color: Colors.blue,),
             )
            ],
          ),
        ),
      ),
    );
  }
}