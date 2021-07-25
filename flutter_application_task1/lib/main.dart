// import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   @override

//   // latihan container
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Container App"),
//         ),
//         body: Container(
//         color: Colors.blueGrey,
//           margin: EdgeInsets.fromLTRB(10, 40, 30, 40),
//           padding: EdgeInsets.only(bottom: 45, top: 24),
//           child: Container(
//             margin: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30),
//                 gradient: LinearGradient(
//                     begin: Alignment.topRight,
//                     end: Alignment.bottomLeft,
//                     colors: <Color>[Colors.amber, Colors.purple])),
//           ),
//         ),
//       ),
//     );
//   }
// }

// stateless widget dan statefull widget

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   void pressButton() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Stateful Widget Demo"),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 10 + number.toDouble()),
//               ),
//               RaisedButton(
//                 child: Text("Add Number"),
//                 // anonymous method
//                 onPressed: () {
//                   setState(() {
//                     number = number + 1;
//                   });
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// practice animated container

//

// practice flexible layout

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Blogging"),
//           backgroundColor: Colors.orange,
//           shadowColor: Colors.black,
//           toolbarHeight: 50.3,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             Flexible(
//               flex: 1,
//               child: Container(
//                 color: Colors.orange,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Tab Bar"),
          ),
          body: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints.expand(height: 60),
                child: TabBar(tabs: [
                  Tab(
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.orange,
                    ),
                    child: Text(
                      "Tab 1",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.roofing, color: Colors.orange),
                    child: Text(
                      "Tab 2",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Icon(Icons.engineering, color: Colors.orange),
                    child: Text(
                      "Tab 3",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ),
                ]),
              ),
              Expanded(
                  child: Container(
                child: TabBarView(children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Hallo Person, This is Tab 1",
                          style: TextStyle(
                              color: Colors.lightGreenAccent,
                              fontSize: 30.0,
                              backgroundColor: Colors.amber),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Hallo Person, This is Tab 2",
                          style: TextStyle(
                              color: Colors.lightGreenAccent, fontSize: 30.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Hallo Person, This is Tab 3",
                          style: TextStyle(
                              color: Colors.lightGreenAccent, fontSize: 30.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ]),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
