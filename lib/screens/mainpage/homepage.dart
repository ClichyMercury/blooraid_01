import 'package:blooraid_01/widgets/MyListTile.dart';
import 'package:blooraid_01/widgets/blackBox.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: Column(children: [
              SizedBox(height: 10),
              BlackBox(),
              MyListTile(),
              MyListTile()
            ]),
          ),
        ));
  }
}
