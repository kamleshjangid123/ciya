import 'package:ciya/src/Screen/Homescreen2.dart';
import 'package:ciya/src/components/Drink.dart';
import 'package:ciya/src/components/Footer.dart';
import 'package:ciya/src/components/Product.dart';
import 'package:ciya/src/components/HeaderHomeComponent.dart';
import 'package:ciya/src/components/ImageSliderState.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(appBar: AppBar(title: Text("Home",style: TextStyle(fontSize: 20),)),
    drawer: Drawer(
      width: w*.6,
      child: Column(children: [
        DrawerHeader(child: Image.asset('assets/images/profile.png')),
        Text('Kamlesh Jangid',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
        Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(left: 5,bottom: 5),
              height: h*.06,
              child: Row(children: [
                Icon(Icons.settings,size: 25,),
                SizedBox(width: 8,),
                Text('Setting',style: TextStyle(fontSize: 20),)
              ],),
            ),
             Container(
              margin: EdgeInsets.only(left: 5,bottom: 5),
              height: h*.06,
              child: Row(children: [
                Icon(Icons.contact_emergency,size: 25,),
                SizedBox(width: 8,),
                Text('Contect',style: TextStyle(fontSize: 20),)
              ],),
            ),
             Container(
              margin: EdgeInsets.only(left: 5,bottom: 5),
              height: h*.06,
              child: Row(children: [
                Icon(Icons.change_circle,size: 25,),
                SizedBox(width: 8,),
                Text('Theme',style: TextStyle(fontSize: 20),)
              ],),
            )
          ],),
        )
      ],),
    ),
           body: 
  SafeArea(child:       
      Container(
        width: w,
        height: h,
        child: SingleChildScrollView(
          child: Column(
            children: [
             /* Container(
                width: w,
                height: h*.1,
                color: Colors.amber,
                child: HeaderHomeComponent(),),
*/
                 Container(
                width: w,
                height: h*.25,margin: EdgeInsets.only(top: 5),
              
                child: ImageSliderState(),),

                Container(
                width: w,
                height: h*.09,margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                color: Color.fromARGB(255, 109, 182, 216),
              
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen())), 
                    child: Text("Food",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 25),)),
                    TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen2())), 
                    child: Text("Drink",style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255),fontSize: 25))),
                  ],
                ),),

          Container(
            width: w,
            height: h*.44,
            color: Color.fromARGB(255, 119, 240, 5),
            child:  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Container(
                          width: w,
                          height: h*.44,
                       

                          child: Product(),
                        ),

                        
                       
                      ],
                    )),
            ),
            
           
              Container(width: w,
          height: h*.08,
          color: Color.fromARGB(255, 27, 26, 26),
          child: Footer(),
         
          ),
            ],
          ),
        ),
        ),

  ),

    );
  }
}