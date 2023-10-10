import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Profile"),);
  }
}
/*
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {

    var Name="kamlesh";
    var Password="jangid";

    var w =MediaQuery.of(context).size.width;
    var h =MediaQuery.of(context).size.height;
    return Scaffold(body:
SingleChildScrollView(
  child:


    Container(width: w,
    padding: EdgeInsets.only(top: h*.3,bottom: h*.3),
    height: h,
  color: Colors.amber,
    
      child:
     Container(
      color: const Color.fromARGB(255, 7, 255, 135),
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: [ Text("Enter Your Name"),
        Container(
          height: h*.05,
          width: w*.7,
          color: Colors.white,
          child: TextField(
            controller: name,
          ),
        ),

        Text("Enter Password"),
        Container(
          height: h*.05,
          width: w*.7,
          color: Colors.white,
          child: TextField(controller: email,),
        ),

        Container(
          height: h*.05,
          width: w*.4,
          color: const Color.fromARGB(255, 255, 255, 255),
          
          child: TextButton(onPressed: ()=>{}, child: Text("Login")) ,
          
        )

      

    ]),
    ))
    )
    
    ,);
  }
}
*/