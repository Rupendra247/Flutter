import 'package:flutter/material.dart';
import 'package:my_app/screen/locallogin.dart';
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
        appBar: AppBar(
        title: Text("AttenX" , style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Image.asset( "assets/logo.png",
              //  height: 40,width: 40,),
              SizedBox(height: 100),
              Text("Welcome To AttendX", style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold ,),),
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: usernameContainer,
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "enter your email",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String){

                  }

                ),
              ),
              // SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: passwordContainer,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "enter your password",
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
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: (){
                    onsubmit(context);
                  }, 
                  child: Text("Register"),
                  
                  ),
              ),
             
            ],
          ),
        ),
      ),

    );
  }
}