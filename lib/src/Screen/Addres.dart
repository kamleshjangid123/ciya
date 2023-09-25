import 'package:ciya/src/Screen/Payment.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(body: 
    SafeArea(child: 
    Column(children: [
      
      Container(
        
        height: h,
        width: w,
        child: Column(children: [
      Container(
        height: h*.03,
        width: w,
        color: Colors.white,
        child: Text("Address",style: TextStyle(fontSize: 25),),),
        
          Container(
            height: h,
            width: w,
            child: Column(children: [
              Container(
            margin: EdgeInsets.all(5),
            height: h*.35,
            width: w,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.grey),
          ),
          Container(
            height: h*.03,
            width: w,
            margin: EdgeInsets.all(3),
            child: Text("Payment",style: TextStyle(fontSize: 23),),
          ),
          Container(
            
            height: h*.09,
            width: w,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: const Color.fromARGB(153, 194, 150, 150)),
            child: Row(children: [
              Container(
                height: h*.09,
                width: w*.3,
                child: Image.asset('assets/images/card.png'),
              ),
              Container(
                height: h*.08,
                width: w*.6,
                child: Column(children: [
                  Text("Card",style: TextStyle(fontSize: 25),),
                  Text("Visa MasterCard",style: TextStyle(color: Colors.grey),)
                ]),
                       
              )
            ],),

          ),

          Container(
            height: h*.09,
            width: w,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: const Color.fromARGB(153, 194, 150, 150)),
            child: Row(children: [
              Container(
                height: h*.09,
                width: w*.3,
                child: Image.asset('assets/images/upi.png'),
              ),
              Container(
                height: h*.08,
                width: w*.6,
                child: Column(children: [
                  Text("UPI",style: TextStyle(fontSize: 25),),
                  Image.asset('assets/images/allpay.png',height: 20,width: 40,)
                ]),
                       
              )
            ],),

          ),

          Container(
            height: h*.09,
            width: w,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: const Color.fromARGB(153, 194, 150, 150)),
            child: Row(children: [
              Container(
                height: h*.09,
                width: w*.3,
                child: Image.asset('assets/images/cash.png'),
              ),
              Container(
                height: h*.08,
                width: w*.6,
                child: Column(children: [
                  Text("Cash",style: TextStyle(fontSize: 25),),
                  Text("Cash On Delivery",style: TextStyle(color: Colors.grey),)
                ]),
                       
              )
            ],),

          ),
          Container(height: h*.08,width: w,),
           Container(
        height: h*.1,
        width: w,
        margin: EdgeInsets.all(3),
        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.black),
        child: Text("Payment Now",style: TextStyle(color: Colors.white,fontSize: 35),textAlign: TextAlign.center,),
      ),

                    
        ],),
      ),
     
            ],),
          )
    ],)
    ));
  }
}