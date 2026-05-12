import 'package:flutter/material.dart';
import 'package:my_app/screen/locallogin.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LogOut extends StatelessWidget {
  const LogOut({super.key});
  void handlelogout(BuildContext context){
    showDialog(
      context: context, 
      builder: (context){
      return AlertDialog(
        title: Text("Log Out"),
        content: Text("Are you sure you want to log out?"),
        actions: [
          TextButton(onPressed:() {
            Navigator.pop(context);
          }, 
        child: Text("Cancel")),
        TextButton(
          onPressed: () async {
            SharedPreferences pref = 
               await SharedPreferences.getInstance();
            await pref.remove('username');
            await pref.remove('password');
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LocalLogin()),
                      );
      },
      child: Text('yes'),
      )],
      );
    });
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [  
          ElevatedButton(
            onPressed: () => handlelogout(context), child: Text("Log Out")),
        ]
      ),
    );
  }
}