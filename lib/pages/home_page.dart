import 'package:flutter/material.dart';
import 'package:flutter_finalproject/pages/shifscreen.dart';

class Homepage extends StatefulWidget{
  const Homepage({super.key});

  @override
  State<StatefulWidget> createState()  => _HomePageState();

}

class _HomePageState extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
    );
  }

}