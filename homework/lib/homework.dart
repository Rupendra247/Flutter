import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Column(
          children: [
            Text("Good Morning" , style: TextStyle(color: Colors.purple),),
            Text("John Doe")
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 151, 169, 183),
        
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
      
                  ),
                ),
            ],
          )
        ],
      ),

    );
  }
}