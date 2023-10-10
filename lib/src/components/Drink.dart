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
/*import 'package:ciya/src/components/Cart_Buy.dart';
import 'package:flutter/material.dart';

class Pizza1 extends StatefulWidget {
  String ?food;
   String ?comment;
   Pizza1(String food,String comment){
    super.key;
this.food=food;
this.comment=comment;
   }
  
 

  @override
  State<Pizza1> createState() => _Pizza1State();
}

class _Pizza1State extends State<Pizza1> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      title: Text("Pizza"),
    ),
    body: SingleChildScrollView(scrollDirection: Axis.vertical,
    
     child: Column(
      children: [
        Container(
          
          width: w,
          color: Color.fromARGB(255, 163, 160, 160),
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_IndianTandooriPaneer.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.55,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("${widget.food}",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            
        /* Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_Farmhouse.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Farmhouse Pizza",style: TextStyle(fontSize: 18),),
                          Text("mrp : 189rs"),
                          Container(
                            height: h*.13,
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

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                               
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

               Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_Veg_Extravaganz.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Extravaganz Pizza",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
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

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

               Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_Peppy_Paneer.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Peppy Paneer Pizza",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
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

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

               Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_Margherit.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Margherit Pizza",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
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

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

               Container(
                height: h*.25,
                width: w,
                margin: EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: h*.23,
                      width: w*.4,
                      
                      child: Image.asset('assets/images/p_Double_Cheese_Margherita.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Double Cheese Margherita Pizza",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs"),
                          Container(
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

                                  
                                  height: h*.04,
                                  width: w*.24,
                                   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Color.fromARGB(255, 243, 229, 182)),
                                  child: Text("Buy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                  )],
                                ),),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
*/
            ],
          ),
        )
      ],
     )
    
    ),
    ) ;
  }
}
*/