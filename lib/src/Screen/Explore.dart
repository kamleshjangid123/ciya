import 'package:ciya/src/Screen/Orderplace.dart';
import 'package:ciya/src/components/Cart_Buy.dart';
import 'package:ciya/src/components/Footer.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  
  @override
  Widget build(BuildContext context) {
   
    var h = MediaQuery.of(context).size.height;
  var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: 
      SafeArea(
      child:  
      Container(
        
        width:w ,
        color: Color.fromARGB(255, 255, 255, 255),
        
          child: Column( children: [
            Container(
              height: h*.1,
              width: w,
              
              margin: EdgeInsets.symmetric(horizontal: 70),
             
              child: Image.asset("assets/images/search.png",fit: BoxFit.cover,),
            ),

             Container(
              width: w,
              height: h*.7852,
              
              color: Color.fromARGB(255, 255, 255, 255),
              child: SingleChildScrollView(scrollDirection: Axis.vertical,
              child: Column(children: [

                 Container(
              height: h*.07,
              width: w,
              margin: EdgeInsets.all(5),
              color: Color.fromARGB(255, 254, 254, 255),
              child: Text("Top Trending",),
            ),
            Container(
              height: h*.22,
              width: w,
              color:Color.fromARGB(255, 255, 255, 255) ,
              child:
              SingleChildScrollView(scrollDirection: Axis.horizontal,
              child:
               Row(
                children: [Container(
                height: h*.2,
                margin: EdgeInsets.only(left: 5),
                width: w*.3,
                child:
                TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                    child:Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Image.asset('assets/images/p_IndianTandooriPaneer.jpg'),
                   Text("Tandoori Paneer Pizza",textAlign: TextAlign.center,)
                ],),)
              ),
              Container(
                height: h*.2,
                margin: EdgeInsets.only(left: 5),
                width: w*.3,
                child:
               TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                    child:
                 Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   Image.asset('assets/images/burger1.png'),
                   Text("Burger",textAlign: TextAlign.center,)
                ],),)
              ),
              
              

               Container(
                height: h*.2,
                margin: EdgeInsets.only(left: 5),
                width: w*.3,
                child:
               TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                    child:
                 Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                   Image.asset('assets/images/p_Farmhouse.jpg'),
                   Text("Farmhouse Pizza",textAlign: TextAlign.center,)
                ],),)
              ),

               Container(
                height: h*.2,
                margin: EdgeInsets.only(left: 5),
                width: w*.3,
                child:
               TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                    child:
                 Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                   Image.asset('assets/images/pasta.png'),
                   Text("Masala Pasta",textAlign: TextAlign.center,)
                ],),)
              ),
               Container(
                height: h*.2,
                margin: EdgeInsets.only(left: 5),
                width: w*.3,
                child:
               TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart_Buy())), 
                    child:
                 Column(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                   Image.asset('assets/images/drink5.png',height: h*.15,),
                   Text("Cocktail",textAlign: TextAlign.center,)
                ],),)
              ),
              ],),)
            ),

                Container(
              height: h*.25,
              width: w,
              margin: EdgeInsets.all(5),
              color: const Color.fromARGB(255, 204, 181, 243),
              child: Text("Recent"),
            ),

            Container(
              height: h*.25,
              width: w,
              margin: EdgeInsets.all(5),
              color: const Color.fromARGB(255, 204, 181, 243),
              child: Text("Favorite"),
            ),

             Container(
              height: h*.25,
              width: w,
              margin: EdgeInsets.all(5),
              color:const Color.fromARGB(255, 204, 181, 243),
              child: Text("Suggete"),
            ),

         

              ],),
              ),
             ),


              Container(width: w,
          height: h*.08,
          color: Color.fromARGB(255, 27, 26, 26),
          child: Footer(),
         
          ),
            

          ],
          )
         
        
      ),
      
      ),
      
    );
  }
}