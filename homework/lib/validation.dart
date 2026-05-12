import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
   Validation({super.key});
   

  @override
  State<Validation> createState() => _ValidationState();
}


class _ValidationState extends State<Validation> {

  TextEditingController emailContainer = TextEditingController();
  TextEditingController phoneContainer = TextEditingController();
  TextEditingController passwordContainer = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
                  controller: emailContainer,
                  decoration: InputDecoration(
                  labelText: "Username",),  
                  validator: (value){
                    if (value == null || value.isEmpty){
                      return "enter email";
                    }
                    if (value.contains("@")){
                      return ("enter valid");
                    }
                  }, 
            ),
           TextFormField(
                  controller: passwordContainer,
                  decoration: InputDecoration(
                  labelText: "Password",),
                  // border: OutlineInputBorder(),
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "enter password";
                    }
                    if (value.length < 10) {
                      return("put strong password");
                    }

                  }
                  ),
                  
           TextFormField(
                  controller: phoneContainer,
                  decoration: InputDecoration(
                  labelText: "Phone Number",
                  border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty){
                      return "enter phone number";
                    }
                    if (value.length != 10){
                      return 'enter 10 number';
                    }
                  },
             ),
             ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("form Submitted"))
                  );
                }
              }, 
              child: Text("submit"))
          ],
        ),
      ),
    );
  }
}