import 'package:blooraid_01/screens/connection/enterEmail.dart';

import 'package:blooraid_01/screens/splashPage/SplashScreen2.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SplashPage01 extends StatefulWidget {
  const SplashPage01({
    super.key,
  });

  @override
  State<SplashPage01> createState() => _SplashPage01State();
}

class _SplashPage01State extends State<SplashPage01> {
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
                    "Welcome to",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
                  ),
                  Text(
                    "Xiemie",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: pink,
                      fontSize: 33,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Votre compagnon pour votre\n   confidentialité numérique",
                    style: TextStyle(color: Colors.black, fontSize: 15,),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EnterYourEmail()));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )),
            MyCustumButton(
              text: "   Get Started",
              icon: LineAwesomeIcons.arrow_right,
              touch: SplashPage02(),
            ),
          ],
        ));
  }
}
