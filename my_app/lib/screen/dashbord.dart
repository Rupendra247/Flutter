import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Dashboard()));
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Soft background color
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
                  children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(70)
            ),
            child:Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.amber,
                    child: Icon(Icons.person, color: Colors.blue,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Text('Student Dashboard'),
                ),
                
              ],
            ),
          ),
         ] 
        ),

      ),

    );
  }
}