import 'package:blooraid_01/screens/splashPage/SplashScreen2.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyFamily extends StatelessWidget {
  const MyFamily({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: "image", child: Image.asset("assets/images/data2.png")),
              Column(
                children: [
                  const Text(
                    "Security is a",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                  Text(
                    "family affair",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: bleu,
                      fontSize: 33,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const MyCustumButton(
          text: "Invite Family",
          icon: LineAwesomeIcons.arrow_right,
          touch: SplashPage02(),
        ));
  }
}
