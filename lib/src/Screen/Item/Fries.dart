import 'package:flutter/material.dart';

class Fries extends StatefulWidget {
  const Fries({super.key});

  @override
  State<Fries> createState() => _FriesState();
}

class _FriesState extends State<Fries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("French Fries"),
    ),);
  }
}