import 'dart:async';

import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  void initState()
  {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "WELCOME TO",
                  style: TextStyle(color: Colors.brown,fontSize: 36,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),
                Text(
                  "RESUME MAKER",
                  style: TextStyle(color: Colors.brown,fontSize: 50,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),
                ),
                Container(
                  child: Image.asset("assets/image/first.jpg",height: 300,width: 300,),
                ),
                CircularProgressIndicator(
                   backgroundColor: Colors.white,
                  color: Colors.brown.shade400,
                  strokeWidth: 2,
                )
              ],
            ),
          ),
        )
    );
  }
}
