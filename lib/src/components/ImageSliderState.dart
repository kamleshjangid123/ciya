import 'package:flutter/material.dart';

class ImageSliderState extends StatefulWidget {
  const ImageSliderState({super.key});

  @override
  State<ImageSliderState> createState() => _ImageSliderStateState();
}

class _ImageSliderStateState extends State<ImageSliderState> {
  @override
  Widget build(BuildContext context) {
        var w = MediaQuery.of(context).size.width;
        var h = MediaQuery.of(context).size.height;
    return Scaffold(body: 
    
    Column(children: [

Container(
      width: w,
      height: h*.25,
      margin: EdgeInsets.symmetric(horizontal: 5),
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
   child: Image.asset("assets/images/6.jpg",fit: BoxFit.cover,),
   clipBehavior: Clip.antiAlias,
      ),
      
      
    ],
    ));
    
  }
}