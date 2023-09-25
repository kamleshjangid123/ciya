import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:ciya/src/Screen/Login.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController  name=TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController mobile =TextEditingController();
  TextEditingController password =TextEditingController();
  TextEditingController confirm_password =TextEditingController();

signup(){

  
  print("name=${name.text}");
  print("email=${email.text}");
  print("mobile=${mobile.text}");
  print("password=${password.text}");
  print("comfirm_password=${confirm_password.text}");
 if(name.text=="admin" && email.text=="admin@gmail.com" && mobile.text=="1234567890" && password.text=="12345" && confirm_password.text=="12345")
 {
Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));}
else{
  print("not login");
}
}
  

  @override
  Widget build(BuildContext context) {
     var w =MediaQuery.of(context).size.width;
    var h =MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
        height: h,
        width: w,
        color:  Color.fromARGB(255, 215, 213, 213),
        child: 
        Column( mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(height: h*.2,width: w,
            child:Center(child: Text("Sign Up",style: TextStyle(fontSize: 55 ),),)
            
            ),


            Container(
            height: h*.4,
            width: w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

           Container(
            height: h*.06,
            width: w*.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),color: Colors.white),
            child: TextField (controller: name,  decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Full Name",),),
          ),
           Container(
            height: h*.06,
            width: w*.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),color: Colors.white),
            child: TextField(controller: email, decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Email",),),
          ), Container(
            height: h*.06,
            width: w*.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),color: Colors.white),
            child: TextField(controller: mobile, decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Mobile no.",),),
          ),
           Container(
            height: h*.06,
            width: w*.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),color: Colors.white),
            child: TextField(controller: password,decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Password",),),
          ), Container(
            height: h*.06,
            width: w*.7,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),color: Colors.white),
            child: TextField(controller: confirm_password,decoration: InputDecoration(border: OutlineInputBorder(borderRadius:BorderRadius.all(Radius.circular(15))),hintText: "Confirm Password",),),
          )

            ],),
          ),
          Container(
            height: h*.06,
            width: w*.6,
            child: Row(children: [
              Icon(Icons.check_box),
            Text("I agree with Privacy and Policy ")
            ],),
          ),
           TextButton(onPressed: ()=>signup(),
                        child: 
                        Container(
                          height: h*.06,
                        width: w*.4,
                        
                        decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),color: Colors.black,),
                       
                        child:Center(child:  Text("Sign Up",style:TextStyle(color: Colors.white,fontSize: 25)),)),
                        ),

                         Container(height: h*.12,width: w,),
                          
                        Container(
                          height: h*.1,
                          width: w,
                          child:Column(children: [
                            Text("Already have an account?"),
                             TextButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Login())),
                        child:
                            Text("Login",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),))

                          ],) 
                          
                        )
          
        ],),
      ),
          ],
        ),
      ))
    );
  }
}