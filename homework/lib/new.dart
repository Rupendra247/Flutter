import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  const CardDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Flutter Card Sample", style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
        ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              color: const Color.fromARGB(250, 246, 244, 244),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Icon(Icons.call),
                      SizedBox(width: 20),
                      Text("66677897", style: TextStyle(color: Colors.green)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 50),
                      Text(
                        "Incoming",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Dail", style: TextStyle(color: Colors.blue)),
                      SizedBox(width: 45),
                      Text(
                        "Call Hisotry",
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}