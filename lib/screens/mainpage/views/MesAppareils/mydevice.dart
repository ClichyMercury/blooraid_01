import 'package:blooraid_01/widgets/myCustumAppbar.dart';
import 'package:flutter/material.dart';

class MyDevice extends StatelessWidget {
  const MyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustumAppBar("Mes appareils connectés"),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
        ),
      ),
    );
  }
}
