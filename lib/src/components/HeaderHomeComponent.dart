import 'package:flutter/material.dart';

class HeaderHomeComponent extends StatefulWidget {
  const HeaderHomeComponent({super.key});

  @override
  State<HeaderHomeComponent> createState() => _HeaderHomeComponentState();
}

class _HeaderHomeComponentState extends State<HeaderHomeComponent> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      
      body: Container(

        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              width: w*.1,
              height: h*.1,
              child: Icon(Icons.home,size: 40,color: Colors.amber,),
            )
          ],),
           Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              width: w*.6,
              child: Text("Home",style: TextStyle(fontSize: 20),),
            )
          ],)
        ],),
    ),
    );
  }
}