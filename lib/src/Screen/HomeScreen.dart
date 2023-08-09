import 'package:ciya/src/components/HeaderHomeComponent.dart';
import 'package:ciya/src/components/ImageSliderState.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: w,
                height: h*.1,
                color: Colors.amber,
                child: HeaderHomeComponent(),),

                 Container(
                width: w,
                height: h*.3,margin: EdgeInsets.only(top: 5),
              
                child: ImageSliderState(),)
            ],
          ),
        )),
    );
  }
}