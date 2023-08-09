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
      height: h*.3,
      margin: EdgeInsets.symmetric(horizontal: 10),
   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),
   child: Image.asset("images/8.jpg",fit: BoxFit.cover,),
   clipBehavior: Clip.antiAlias,
      ),
    ],
    ));
    
  }
}