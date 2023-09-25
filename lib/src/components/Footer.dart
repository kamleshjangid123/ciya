import 'package:ciya/src/Screen/AddTocart.dart';
import 'package:ciya/src/Screen/Explore.dart';
import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
         TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())), 
        child: Text("Home",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
        TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Explore())), 
        child: Text("Explore",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),)),
        
      ],
    );
  }
}