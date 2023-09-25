import 'package:ciya/src/Screen/Addres.dart';
import 'package:flutter/material.dart';

class Cart_Buy extends StatefulWidget {
  const Cart_Buy({super.key});

  @override
  State<Cart_Buy> createState() => _Cart_BuyState();
}

class _Cart_BuyState extends State<Cart_Buy> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,
      child:
      
      SafeArea(child: 
      Column (
        children: [
        Container(
          height: h*.95,
          width: w,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(5),
               height: h*.03,
               width: w,
               decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Colors.white),
               child: Text("Order",style: TextStyle(fontSize: 20),),

            ),
             Container(
            margin: EdgeInsets.all(5),
            height: h*.30,
            width: w,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.greenAccent ),

            
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: h*.03,
            width: w,
            child: Text("Offers",style: TextStyle(fontSize: 20)),
          ),
          Container(
            height: h*.1,
            width: w,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.greenAccent ),
             child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Save 25% on this order",style: TextStyle(color: Colors.black,fontSize: 20),),
              Text("Code: KAM23%OFF",style: TextStyle(color: Colors.red),),
              
             ],)
          ),

          Container(
            margin: EdgeInsets.all(2),
            height: h*.03,
            width: w,
            
            child: Text("Bill",style: TextStyle(fontSize: 20)),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: h*.30,
            width: w,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:Colors.greenAccent ),


          ),

Container(
  margin: EdgeInsets.all(5),
  height: h*.08,
  width: w,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:const Color.fromARGB(255, 0, 0, 0) ),
  child: TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Address())), 
           child:Text("Place Order ",style: TextStyle(color: Colors.white,fontSize: 30),textAlign: TextAlign.center,),)
  
)

          ],)
             
          
        )
      ],)
       ), ),
    );
  }
}