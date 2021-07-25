import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Your Blogs",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 34.5,
                  backgroundColor: Colors.brown,
                  child: Text(
                    "W",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(1.5))),
                )
              ],
            ),
          ),
        ],
      ),
      // Center(
      //   child: RaisedButton(
      //     child: Text("Back"),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      // ),
    );
  }
}
