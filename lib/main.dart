import 'package:ciya/src/Screen/Addres.dart';
import 'package:ciya/src/Screen/Item/Burger.dart';
import 'package:ciya/src/Screen/Explore.dart';
import 'package:ciya/src/Screen/HomeScreen.dart';
import 'package:ciya/src/Screen/Item/Pasta.dart';
import 'package:ciya/src/Screen/Login.dart';
import 'package:ciya/src/Screen/Item/Pizza1.dart';
import 'package:ciya/src/components/HeaderHomeComponent.dart';
import 'package:ciya/src/components/ImageSliderState.dart';
import 'package:ciya/src/components/Product.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomeScreen(),
    );
  }
}
