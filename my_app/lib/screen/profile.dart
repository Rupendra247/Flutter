import 'package:flutter/material.dart';
import 'package:my_app/screen/dashbord.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Center(child: SizedBox(height: 40)),
          Icon(Icons.person ,size:60,),
          // CircleAvatar(
          //   radius: 70,
          //   // backgroundColor: Colors.blue ,
          //   // backgroundImage: AssetImage("lib/assets/logo.png"),
          // ),
          SizedBox(height: 10,),
          Text("Student Name", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text("Student ID: 349090"),
          SizedBox(height: 10,),
          Column(
            children: [
              Text("Course: Computer Science With AI", style: TextStyle(fontSize: 24),),
              SizedBox(height: 5,),
              Text('2nd Semister' , style: TextStyle(fontSize: 20),),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 400,),
             ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Dashboard(),
      ),
    );
  },
  child: Column(
    children: [
      Text("Dashboard"),
    ],
  ),
)
            ],
          )
        ],
        

      ),
    );
  }
}