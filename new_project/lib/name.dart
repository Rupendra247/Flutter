import 'package:flutter/material.dart';

Widget discoverWidget(IconData icon, String title ){
  return Column(
    children: [
      Container(
        
        height: 110,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 234, 243),
          borderRadius: BorderRadius.circular(25),

        ),
        
        // color: const Color.fromARGB(255, 80, 63, 63),
        child: Container(
          // decoration: BoxDecoration(
          //   color: Colors.blue,
          //   shape: BoxShape.circle,
            
          // ),
          child: Icon(icon,
          size: 30,),
        ),
      ),
      const SizedBox(height: 5,),
      Text(title , style: TextStyle(fontWeight: FontWeight.bold),)
    ],
  );
}