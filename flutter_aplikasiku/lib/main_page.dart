import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_aplikasiku/Second_Page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController controller = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.purpleAccent,
          // appBar: AppBar(
          // title: Text("Main Page"),
          // ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Blogging",
                    style:
                        TextStyle(fontSize: 50.4, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    // controller: controller,
                    // maxLength: 5
                    onChanged: (value) {
                      setState(() {});
                    },
                    style: TextStyle(color: Colors.orange),
                    decoration: InputDecoration(
                      // icon: Icon(Icons.person),
                      prefixIcon: Icon(Icons.person),
                      hintText: "Full Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      contentPadding: EdgeInsets.only(top: 30, bottom: 10),
                    ),
                  ),
                  TextField(
                    // controller: controller,
                    // maxLength: 5
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        // icon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.email),
                        hintText: "Valid Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  TextField(
                    controller: controller,
                    // maxLength: 5
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        // icon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  TextField(
                    // controller: controller,
                    // maxLength: 5
                    onChanged: (value) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        // icon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.lock_open),
                        hintText: "Confirm Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  RaisedButton(
                      child: Text(
                        "Go To Second Page",
                        style: TextStyle(color: Colors.amber),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SecondPage();
                        }));
                      }),
                ]),
          )),
    );
  }
}
