import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  int num = 1;
  var n = Random();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    num = n.nextInt(6) + 1;
                  });
                },
                child: Container(
                  child: Image.asset('images/${num}.png'),
                  width: 250,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text("Tap on Dice",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100)),
              SizedBox(
                height: 50,
              ),
              Text("You Got: ${num}",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
