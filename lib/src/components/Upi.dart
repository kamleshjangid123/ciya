import 'package:flutter/material.dart';

class Upi extends StatefulWidget {
  const Upi({super.key});

  @override
  State<Upi> createState() => _UpiState();
}

class _UpiState extends State<Upi> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Upi Payment')),
      body: SingleChildScrollView(child: Column(children: [
      Container(
        height: h*.9,
        width: w,
        color: Color.fromARGB(255, 162, 162, 162),
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 5,bottom: 5),
            height: h*.1,
            width: w,
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h*.08,
                  width: w*.2,
                  child: Column(children: [
                    Icon(Icons.home),
                    Text('Address'),
                  ],),
                ),
                Container(
                  height: h*.08,
                  width: w*.2,
                  child: Column(children: [
                    Icon(Icons.production_quantity_limits_rounded),
                    Text('Order Summary',textAlign: TextAlign.center,),
                  ],),
                ),
                Container(
                  height: h*.08,
                  width: w*.2,
                  child: Column(children: [
                    Icon(Icons.payment),
                    Text('Payment'),
                  ],),
                ),
              ],
            ),
          ),
          Container(
            height: h*.05,
            width: w,
            padding: EdgeInsets.only(left: 5),
            color: Colors.white,
            child: Row(children: [
              Icon(Icons.price_change,color: Colors.green),
              
              Text('5% off on UPI Transaction')
            ],),
          ),
              Container(
                margin: EdgeInsets.only(top: 5),
            height: h*.1,
            width: w,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                
                height: h*.08,
                width: w*.5,
                child: TextField(decoration: InputDecoration(hintText: 'Enter Your Upi id'),),
                    ),
                Container(
                  height: h*.04,
                  width: w*.25,
                  child:ElevatedButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Text('verify'))), 
                child:
                   Text('Verify',),)
                )    
            ],),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: h*.5,
            width: w,
            color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(children: [
              Container(
                height: h*.06,
                width: w*.95,
                child: Text('Price Details',style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey),),
              ),
              Container(height: h*.15,
              child: Column(children: [
              Container(
                height: h*.04,
                width: w*.95,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Quantity'),
                  Text('1 item')
                ],
                ),
              ),
                Container(
                height: h*.04,
                width: w*.95,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Price'),
                  Text('149/-')
                ],
                ),
              ),
                Container(
                height: h*.04,
                width: w*.95,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery Charges'),
                  Text('FREE',style: TextStyle(color: Colors.green),)
                ],
                ),
              ),],)),
                Container(
                height: h*.06,
                width: w*.95,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount',style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('149/-',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
                ),
              )
            ],),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: h*.1,
            width: w,
            color: Colors.white,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Container(
              height: h*.09,
              child: Center(child: Text('300/-',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
              
            ),
            Container(
              height: h*.06,
              width: w*.3,
              color: Colors.grey,
              child:Center(child:  Text('Pay Now',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),)
            )
             
            ],
            ),
          )
      
        ],),
      ),
     ],),) );
  }
}