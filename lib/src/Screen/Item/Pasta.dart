import 'package:ciya/src/Screen/Exta/Cart_Buy.dart';
import 'package:flutter/material.dart';

class Pasta extends StatefulWidget {
  const Pasta({super.key});

  @override
  State<Pasta> createState() => _PastaState();
}

class _PastaState extends State<Pasta> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      title: Text("Pasta"),
    ),
    body: Container(
      height: h,
      width: w,
      child: Column(
        children: [
          Container(
                height: h*.25,
                width: w,
                
                margin: EdgeInsets.all(5),
                color: Color.fromARGB(255, 195, 203, 151),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/mpasta.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.55,
                      color: Color.fromARGB(255, 195, 203, 151),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Masala Pasta",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
                            height: h*.05,
                            width: w*.5,
                            color: Color.fromARGB(255, 195, 203, 151),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Container(

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("+  Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                                 Container(
                                  child:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Container(

                                  
                                  height: h*.05,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  
                                  child:  TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                                           child:Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),)
                                  )],
                                ),),
                               
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),),

                  Container(
                height: h*.25,
                width: w,
                
                margin: EdgeInsets.all(5),
                color: Color.fromARGB(255, 195, 203, 151),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/wpasta.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.55,
                      color: Color.fromARGB(255, 195, 203, 151),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("White Sauce Pasta",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
                            height: h*.05,
                            width: w*.5,
                            color: Color.fromARGB(255, 195, 203, 151),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Container(

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("+  Cart",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                                 Container(
                                  child:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [Container(

                                  
                                  height: h*.05,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  
                                  child:  TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                                           child:Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),textAlign: TextAlign.center,),)
                                  )],
                                ),),
                               
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),)
        ],
      ),
    ),
    );
  }
}