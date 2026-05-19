// import 'package:flutter/material.dart';
// import 'package:new_project/login.dart';
// import 'package:new_project/new_design.dart';


// class ButtonNavigation extends StatefulWidget {
//   const ButtonNavigation({super.key});

//   @override
//   State<ButtonNavigation> createState() => _ButtonNavigationState();
// }

// class _ButtonNavigationState extends State<ButtonNavigation> {
//   int _CurrentIndex = 0;
//   final List<Widget> _screens = [Login(), NewDesign() ]
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[-_CurrentIndex] ,
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _CurrentIndex,
//         onTap: (index) {
//           setState(() {
//             _CurrentIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
//         ],
//       ),
//     );
//   }
// }
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:new_project/login.dart';
import 'package:new_project/new_design.dart';


class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _CurrentIndex = 0;
  final List<Widget> _screens = [Login(), NewDesign() ]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_CurrentIndex] ,
      bottomNavigationBar: CurvedNavigationBar(
        // currentIndex: _CurrentIndex,
        onTap: (index) {
          setState(() {
            _CurrentIndex = index;
          });
        },
        items: [
          Icon(Icons.settings),
          Icon(Icons.home)

        ],
      ),
    );
  }
}