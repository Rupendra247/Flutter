import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  const NewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewCard', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: SizedBox(
        height: 100,
        child: Card(
          color: const Color.fromARGB(255, 144, 180, 222),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(30),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [
              Row(
                children: [
                  Icon(Icons.phone , color: Colors.black,),
                  Column(
                    children: [
                      Text("8658989",style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
                      Text("incoming",style: TextStyle(color: Colors.brown)),
                    ],
                  ),

                ],
                
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Dail' , style: TextStyle(color: const Color.fromARGB(255, 4, 42, 74)),),
                      Text('Call History',style: TextStyle(color: const Color.fromARGB(255, 5, 53, 92)))
                    ],
        
                  )
                ],
            
          ),
        ),
      ),
    );
  }
}