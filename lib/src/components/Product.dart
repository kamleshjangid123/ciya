

import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:ciya/src/Screen/Item/Pizza1.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    var png=["pizza.png","burger.png","pasta.png","fries.png","sand.png"];
    var food=["Pizza","burger","Pasta","Fries","Sandwich"];
    var comment=["Ain't no party like a pizza party","Love at first burger","Dying for a bowl of pasta","I speak french fries","All i need..."];

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
          for(var i=0;i<5;i++)
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
                height: 100,
                width: 135,
                margin: EdgeInsets.all(5),
               
                child: Column(children: [
                   TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizza1(food[i],comment[i]))), 
                    child:
                   Text('${food[i]}',style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.w600,fontSize: 25),)),
                   Text('${comment[i]}',style: TextStyle(color:Color.fromARGB(255, 224, 227, 59),fontSize: 15),textAlign: TextAlign.center,),
                ]),                 
               
              ),
              Container(
                height: h*.15,
                width: 30,
                
                margin: EdgeInsets.all(5),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  Image.asset("assets/images/hearticon.png",height: 35,width: 35,)

                ],)
                   
                   
                
                 
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