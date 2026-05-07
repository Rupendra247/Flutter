import 'package:flutter/material.dart';
import 'package:my_app/locallogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage extends StatelessWidget {
   LocalStorage({super.key});
   TextEditingController usernameContainer = TextEditingController();
   TextEditingController passwordContainer = TextEditingController();

  @override
  bool isHidden = true;
  bool isVisible = false;
  Future <void> onsubmit(BuildContext context) async{
    final pref = await SharedPreferences.getInstance();
    await pref.setString("username", usernameContainer.text);
    await pref.setString("password", passwordContainer.text);
    ScaffoldMessenger.of(context)
    .showSnackBar(SnackBar(content:
    Text("Register Successfully")

    ));
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LocalLogin())
    );
  }

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
              onsubmit(context);
            }, 
            child: Text("Register"))
        ],
      ),

    );
  }
}