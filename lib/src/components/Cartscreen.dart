import 'package:ciya/src/Screen/Addres.dart';
import 'package:flutter/material.dart';


class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text('Cast Screen'),backgroundColor: Colors.amber,),
      body: Container(
        height: h,
        width: w,
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: h*.1,
            width: w*.9,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow:[new BoxShadow(
              color: Color.fromARGB(255, 176, 175, 175),
              blurRadius: 3.0,
            ),], color: Colors.white,),
            child: Row(
              children: [
                Container(
                  height: h*.09,
                  width: w*.3,
                 
                  child: Image.asset('assets/images/p_IndianTandooriPaneer.jpg'),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: h*.05,
                  width: w*.1,
                  child:Center(child: Text('data')),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40),
                  height: h*.8,
                  width: w*.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.minimize,color: Colors.amber,size: 30,),
                    Text('0',style: TextStyle(fontSize: 25),),
                    Icon(Icons.add,color: Colors.amber,size: 30,)
                  ],),
                )
              ],
            ),
          ),

          Container(
            height: h*.75,
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              Container(
                height: h*.08,
                width: w*.9,
                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25)),color: Colors.amber),
                child:
                 TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Address())), 
                child:
                Center(child:  Text('Place Order Now',style: TextStyle(fontSize: 35),),))
              )
            ],),
          )
        ],),
      ),
    );
  }
}
 