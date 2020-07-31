import 'package:flutter/material.dart';

// Everything in Flutter works in main.dart file and everything that needs to be executed should be in main()
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text("I AM RICH")
          ),
          backgroundColor: Colors.black45,
        ),
        backgroundColor: Colors.black45,
        body: Center(
          child: Image(
            image: AssetImage("images/diamond.png"),
          ),
        ),
      )
    ),
  );
}
