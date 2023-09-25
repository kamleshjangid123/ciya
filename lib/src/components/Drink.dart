import 'package:flutter/material.dart';

class Drink extends StatefulWidget {
  const Drink({super.key});

  @override
  State<Drink> createState() => _DrinkState();
}

class _DrinkState extends State<Drink> {
  @override
   var png=["drink2.png","drink3.png","drink4.png","drink5.png"];
    var drink=["drink1","drink2","drink3","drink4"];
    var comment=["Comment1","Comment2","Comment3","Comment4"];

  Widget build(BuildContext context) {
    var w =MediaQuery.of(context).size.width;
var h =MediaQuery.of(context).size.height;

    return Scaffold(body: 



    SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                       

 Container(
   
      width: w,
      child: Column(
        children: [
          for(var i=0;i<4;i++)
          Container(
             margin: EdgeInsets.all(10),
            width: w,
            height: h*.2,
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),color: const Color.fromARGB(255, 209, 188, 126)),
            child: Row
            
            (mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               
              Container(
                margin: EdgeInsets.all(10),
                height: h*.15,
                width: h*.15,
                
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(100)),color: const Color.fromARGB(255, 209, 188, 126)),
                clipBehavior: Clip.antiAlias,
                child: Image.asset("assets/images/${png[i]}",height: 25,width: 30,),
              ),
              Container(
                height: 80,
                width: 120,
                margin: EdgeInsets.all(5),
               
                child: Column(children: [
                   Text('${drink[i]}',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.w600,fontSize: 25),),
                   Text('${comment[i]}',style: TextStyle(color: Color.fromARGB(255, 207, 110, 110),fontSize: 10),),
                ]),
               
              ),
              Container(
                height: 18,
                width: 18,
                
                margin: EdgeInsets.all(5),
                child: Image.asset("assets/images/dot.png",color: Colors.white,)
                ),
              
            ],),
          ),
         
        ],
      ),
    ),]
 ),
 ),
   
    );
  }
}