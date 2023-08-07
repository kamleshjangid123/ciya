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
    return Scaffold(body: Container(

        child: Row(children: [
          Column(children: [
            Container(
              width: w,
              height: h*.1,
            color: const Color.fromARGB(255, 255, 7, 7),
              child: Icon(Icons.home,size: 40,color: Colors.amber,),
            )
          ],)
        ],),
    ),
    );
  }
}