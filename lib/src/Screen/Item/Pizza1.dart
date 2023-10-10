import 'package:ciya/src/Screen/Item/Pizzadetails.dart';
import 'package:ciya/src/Screen/Exta/Cart_Buy.dart';
import 'package:flutter/material.dart';

class Pizza1 extends StatefulWidget {
  String ?food;
   String ?comment;
   String ?png;
   Pizza1(String food,String comment,String png){
    super.key;
this.food=food;
this.comment=comment;
this.png=png;
   }
  
 

  @override
  State<Pizza1> createState() => _Pizza1State();
}

class _Pizza1State extends State<Pizza1> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(backgroundColor: Colors.amber,
      title: Text("${widget.food}"),
    ),
    body:
    
      Column(
      children: [
        Container(
          
          width: w,
          color: Color.fromARGB(255, 255, 255, 255),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                height: h*.4,
                width: w*.15,
                child: Row(children: [
                  Icon(Icons.star),
                  Text('4.2')
                ],),
              ),
              Container(
                height: h*.4,
                width: w*.6,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/${widget.png}'),
                    ),
                    Container(
                      height: h*.15,
                      width: w*.55,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${widget.food}",style: TextStyle(fontSize:25),),
                          
                          Text("mrp : 199rs",style: TextStyle(fontSize: 20),),
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
               Container(
                margin: EdgeInsets.only(left: 10),
                height: h*.4,
                width: w*.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                  Icon(Icons.star_border,size: 40,),
                  TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Pizzadetails())), 
                    child:
                  Icon(Icons.add,size: 40,color: Color.fromARGB(255, 255, 0, 0),))
                ],),
              ),
  
            ],
          ),
        )
      ],
     )
  
    ) ;
  }
}

/*Container(
                            height: h*.05,
                            width: w*.5,
                            color: Color.fromARGB(255, 255, 255, 255),
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
                          )*/