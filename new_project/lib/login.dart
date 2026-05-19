// import 'package:flutter/material.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//       backgroundColor: Colors.blue,
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Spacer(),
//             Text("profile"),
//             Spacer(),
//             Icon(Icons.settings)
//           ],
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
        
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
          
//           SizedBox(height: 20,),
//           Center(
//             child: CircleAvatar(
//               radius: 50,
//               // backgroundImage: ,
//             ),
//           ),
//           SizedBox(height: 10,),
//           Center(child: Text("Rahul Sharma")),
//           SizedBox(height: 10,),
//           Center(child: Text("rahulsharma@gmail.com")),
//           SizedBox(height: 30,),
//             Container(
//               color: Colors.white,
//               child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Icon(Icons.person),
//                 // Spacer(),
//                 Text("Personal Information"),
//                 Spacer(),
//                 Text("Edit"), 
//               ],
//                         ),
//             ),
//           Container(
//             color: Colors.white,
//             child: Column(
//               children: [

//                 TextField(
//                   decoration: InputDecoration(labelText: "username"),
                  
//                 ),
//                                 TextField(
//                   decoration: InputDecoration(labelText: "password"),
//                 ),
//                                                 TextField(
//                   decoration: InputDecoration(labelText: "Phone number"),
//                 ),
//                                                 TextField(
//                   decoration: InputDecoration(labelText: "Date of Birth"),
//                 ),
//               ],
//             ),  
//           )

          
//         ],
      
        
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text(
                      "Profile", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
            Spacer(),
            Icon(Icons.settings , color: Colors.white,)
      
          ],
        )
      ),
      
      body: Column(
        children: [
          SizedBox(height: 20,),
          CircleAvatar(
            radius: 60,
            backgroundColor: Colors.blue,
          ),
          SizedBox(height: 10,),
          Center(child: Text("Rahul Sharma", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
          SizedBox(height: 7,),
          Center(child: Text("rahulsharma@gmail.com", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))),
          SizedBox(height: 30,),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        Icon(Icons.person),
                        SizedBox(height: 10,),
                        Text("personal Information",
                        style: TextStyle(fontWeight: FontWeight.bold) ,),
                        Spacer(),
                        Text("Edit" ,
                        style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),)
                      ],
                      
                      
                    ),
                    SizedBox(height: 20,),
                    // Spacer(),
                    Row(
                      children: [
                        Text("Full name"),
                        
                      ],
                    ),
                    TextField(
                          decoration: InputDecoration(labelText: "Rahul Sharma",
                          border: OutlineInputBorder()),
                        
                        ),
                        Row(
                          children: [
                            Text("Email"),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "rahulsharma@gmail.com",
                          border: OutlineInputBorder()),
                        
                        ),
                        Row(
                          children: [
                            Text("Phone Number"),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "+975678999",
                          border: OutlineInputBorder()),
                        
                        ),  
                        Row(
                          children: [
                            Text("Date of Birth"),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(labelText: "15 may 2006",
                          border: OutlineInputBorder()),
                        
                        ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.message),
                            ),
                    
                            Text("About Me" ,style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold ),)
                          ],
                        ),
                        Container(
                         padding:  EdgeInsets.all(16.0),
                         decoration: BoxDecoration(
                        
                           border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 0.3),
                        borderRadius: BorderRadius.circular(8),),
                        child:  Text("i am hardworking student and i love coding and i am learning flutter and trying by best to learn"),),
                        SizedBox(height: 50),
                         
                        Column(
                          
                          children: [
                            Container(
                              width: 500,
                              height: 40,
                              
                              child: ElevatedButton(
                                onPressed: (){
                              
                                }, child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    
                                    Icon(Icons.logout),
                                    // Spacer(),
                                    // SizedBox(height: 10,),
                                    Text("logout", style: TextStyle(fontWeight: FontWeight.bold),),
                                  ],
                                )),
                            )
                
                          ],
                        ),
                        
                    
                    
                  ],
                  
                ),
              ),
               
              
            ))
        ],
      ),
      
      // centerTitle: true,
      
      bottomNavigationBar: BottomAppBar(
        
      ),
    );
  }
}