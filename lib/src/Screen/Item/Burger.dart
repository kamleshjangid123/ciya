import 'package:flutter/material.dart';

class Burger extends StatefulWidget {
  const Burger({super.key});

  @override
  State<Burger> createState() => _Pizza1State();
}

class _Pizza1State extends State<Burger> {
  @override
  Widget build(BuildContext context) {
     var w = MediaQuery.of(context).size.width;
     var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(
      title: Text("Burger"),
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
                      
                      child: Image.asset('assets/images/burger.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_One",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs")
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
                      
                      child: Image.asset('assets/images/burger1.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_Two",style: TextStyle(fontSize: 18),),
                          Text("mrp : 189rs")
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
                      
                      child: Image.asset('assets/images/burger3.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_Three",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs")
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
                      
                      child: Image.asset('assets/images/burgers.png'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_Four",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs")
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
                      
                      child: Image.asset('assets/images/CheeseBurger.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_Five",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs")
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
                      
                      child: Image.asset('assets/images/hamburger.jpg'),
                    ),
                    Container(
                      height: h*.23,
                      width: w*.5,
                      color: Colors.white,
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Burger_Six",style: TextStyle(fontSize: 18),),
                          Text("mrp : 199rs")
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),
        )
      ],
     )
    
    ),
    ) ;
  }
}