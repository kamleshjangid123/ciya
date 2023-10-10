import 'package:ciya/src/Screen/Exta/Cart_Buy.dart';
import 'package:ciya/src/components/Cartscreen.dart';
import 'package:flutter/material.dart';

class Pizzadetails extends StatefulWidget {
  const Pizzadetails({super.key});

  @override
  State<Pizzadetails> createState() => _PizzadetailsState();
}

class _PizzadetailsState extends State<Pizzadetails> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("Details"),backgroundColor: Colors.amber,),
      body: Container(
        height: h,
        width: w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
            height: h*.15,
            width: w,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),color: Color.fromARGB(255, 205, 205, 136)),
            child:Center(child:  Text("Indian Tandoori Pizza",style: TextStyle(fontSize: 25),),)
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            height: h*.3,
            width: h*.3,
            color: Colors.amber,
            child: Image.asset('assets/images/p_IndianTandooriPaneer.jpg',height: 25,width: 25,),
          ),
          
          Container(
            height: h*.1,
            width: w*.8,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(children: [
              Container(
                width: w*.3,
                margin: EdgeInsets.only(left: 25),
                child: Text('RS.199/-',style: TextStyle(color: Colors.amber,fontSize: 25),),
              ),
              Container(
                width: w*.4,
                
                child: Column(children: [
                  Container(
                    height: h*.04,
                    width: w*.3,
                    child: Row(children: [
                      Icon(Icons.star),
                      Text('3.4')
                    ],),
                  ),
                  Container(
                    height: h*.05,
                    width: w*.3,
                    child: Row(children: [
                      Text('65 Reviews'),
                      Icon(Icons.keyboard_double_arrow_right)
                    ],),
                  )
                  
                ],),
              )
            ],),

          ),
          Container(height: h*.05,),
          Container(
            height: h*.1,
            width: w*.8,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.amber),

            child:TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cartscreen())), 
                    child:
            Center(child:  Text('Add to cart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),))
          )
        ],),
      ),
    );
  }
}