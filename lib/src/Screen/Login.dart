import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:ciya/src/Screen/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
TextEditingController email =TextEditingController();
TextEditingController password =TextEditingController();
String name1="";
loginfun(){
  print(email);
  print(password);
if(email.text=="admin@gmail.com" && password.text =="12345"){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
  print("loginnnn");
}
else{
print("not login");
}
}
  @override
  Widget build(BuildContext context) {

    var w =MediaQuery.of(context).size.width;
    var h =MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SafeArea(child: 
       SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h,
              width: w,
              color: Color.fromARGB(255, 215, 213, 213),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: h*.15,
                    width: w,
                    color: Color.fromARGB(255, 215, 213, 213),
                    child: Column(children: [
                      Text("Welcome User"),
                      Text("Login",style: TextStyle(fontSize: 55 ),),
                      
                    ],)
                  ),
                  Container(
                    height: h*.3,
                    width: w,
                    color: Color.fromARGB(255, 215, 213, 213),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        Container(
                          height: h*.07,
                          width: w*.6,
                          
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.white),
                          
                              child: TextField(controller: email, decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Username",),),
                              ),
                            
                        
                         Container(
                          height: h*.07,
                          width: w*.6,
                         decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.white),
                          child: TextField(  controller: password, decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Password",),),
                        ),
                        ElevatedButton(onPressed: ()=>loginfun(),
                        child:
                        Container(
                          height: h*.06,
                        width: w*.4,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.black,),
                        
                        child:Center( child: Text("Login",style:TextStyle(color: Colors.white,fontSize: 25)),)),)

                        
                      ],
                      
                    ),
                  ),
                  Container(
                    height: h*.3,
                    width: w*.8,
                    child: Column(
                      children: [
                         Text("login with",style: TextStyle(fontSize: 15),),
                          Image.asset('assets/images/login.png',height: 45,),
                          Container(height: h*.12,width: w,),
                          
                        Container(
                          height: h*.1,
                          width: w,
                          child:Column(children: [
                            Text("Not on this app yet?"),
                             TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Register())),
                        child:
                            Text("Sing up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))

                          ],) 
                          
                        )
                      ],
                    ),
                  ),
                  
                ],
              )
            ),
          ],
        )
       
                      
                        
        ),
     ) );
  }
}




 