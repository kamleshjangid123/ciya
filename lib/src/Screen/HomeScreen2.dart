import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:ciya/src/Screen/Homescreen2.dart';
import 'package:ciya/src/components/Drink.dart';
import 'package:ciya/src/components/Footer.dart';
import 'package:ciya/src/components/Product.dart';
import 'package:ciya/src/components/HeaderHomeComponent.dart';
import 'package:ciya/src/components/ImageSliderState.dart';

import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: 
  SafeArea(child:       
      Container(
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
                height: h*.25,margin: EdgeInsets.only(top: 5),
              
                child: ImageSliderState(),),

                Container(
                width: w,
                height: h*.09,margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                color: Color.fromARGB(255, 109, 182, 216),
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())), 
                    child: Text("Food",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 25),)),
                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen2())), 
                    child: Text("Drink",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 25))),
                  ],
                ),),

          Container(
            width: w,
            height: h*.44,
            color: Color.fromARGB(255, 119, 240, 5),
            child:  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          width: w,
                          height: h*.44,
                       

                          child: Drink(),
                        ),

                        
                       
                      ],
                    )),
            ),
           
            
  Container(width: w,
          height: h*.08,
          color: Color.fromARGB(255, 27, 26, 26),
          child: Footer(),
         
          ),
          
            ],
          ),
        ),
        ),

  ),
    );
  }
}