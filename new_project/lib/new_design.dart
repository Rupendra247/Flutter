import 'package:flutter/material.dart';
import 'package:new_project/name.dart';

class NewDesign extends StatelessWidget {
  const NewDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        title: Container(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("TrueCaller", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold) ,),
            CircleAvatar(
              radius: 27,
              backgroundColor: Colors.blue,
            ),
            ],
          ),
        ),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          SizedBox(height: 15,),
          Row(
            children: [
              Text("Welcome,")
            ],
          ),
          // SizedBox(height: 10,),
          Row(
            children: [
              Text("Alex", style: TextStyle(fontSize: 40 , fontWeight: FontWeight.bold),)

            ],
          ),
          Container(
            height: 70,
            child: ElevatedButton(
                                  onPressed: (){
                                  }, child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                    
                                      
                                      Icon(Icons.search),
                                      // Spacer(),
                                      // SizedBox(height: 10,),
                                      Text("search a number", style: TextStyle(fontWeight: FontWeight.bold),),
                                    ],
                                  )),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Text("Recents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
        
            ],
          ),
          Column(
            children: [
              Row(
                children: [
              
                  Padding(
                    
                    padding: const EdgeInsets.all(8.0),
                    
                    child: CircleAvatar(
              
                      maxRadius: 30,
                          child: Icon(Icons.not_interested_outlined, color: Colors.red, size: 30,),
              
                        ),
                  ),
                  SizedBox(width: 25,),
                      // Spacer(),
                      
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Scammer", style: TextStyle(fontWeight: FontWeight.bold),),
                          
                          Row(
                            children: [
                              Icon(Icons.search),
                              Text("+977789899")
                            ],
                          ),
                            
          
                          
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.arrow_forward),
          
                      // Icon(Icons.search)
                ],
              ),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            child: Row(
              children: [
                Text("Discover", style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              discoverWidget(Icons.blur_circular, "who view my profile",), 

              SizedBox(width:25.0 ,),
                         discoverWidget(Icons.person, "SMS Flitering"),
              SizedBox(width:25.0 ,),

              discoverWidget(Icons.message, "Announcements"),
              
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              discoverWidget(Icons.call, "Community"),
              SizedBox(width: 25,),
              discoverWidget(Icons.email, "How to report calls"),
            ],
          ),
          
          
        ],
      ),


    );
  }
}