import 'dart:async';

import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomeScreen(),));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(body: 
    Container(
      color: Color.fromARGB(255, 247, 212, 108),
      child: Center(child: 
      Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Food App',style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),),
        Text('by kamlesh',style: TextStyle(fontSize: 25,color: Colors.black))
      ],),),
    ),);
  }
}