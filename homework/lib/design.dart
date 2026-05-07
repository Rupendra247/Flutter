import 'package:flutter/material.dart';

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  bool _checked = false;
  bool _on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(Icons.person, color: Colors.white,
            ),
            SizedBox(
              width:8,
            ),
            Text('User Setting',
            style: TextStyle(
              color: Colors.white
            ),),
          ],
        )
      ),
      body: Column(
        children: [
          Center(child: Image.asset("assets/images/photo.png")) ,
          Icon(Icons.person, color: const Color.fromARGB(255, 255, 255, 255)),
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your name',
              hintText: 'eg.jhon'
            )
            ),
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your password',
              // hintText: 'eg.jhon'
            )
            ),
          Row(
            children: [
            Checkbox(
            value: _checked,
            onChanged: (val) => setState(() {
              _checked = val!;
            }), 
            ),
              Text("I agree to terms and condition") 
            ],
          ),
          Row(
            children: [
              Checkbox(value: _on, onChanged: (val) => setState((){
                _on = val!;
              }),
              ),
              Text('Subscribe to newspaper')
            ],

          ),
        ],
      ),
    );
  }
}
