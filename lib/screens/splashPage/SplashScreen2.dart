import 'package:blooraid_01/screens/connection/enterEmail.dart';

import 'package:blooraid_01/screens/splashPage/SplashPage3.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SplashPage02 extends StatefulWidget {
  const SplashPage02({
    super.key,
  });

  @override
  State<SplashPage02> createState() => _SplashPage02State();
}

class _SplashPage02State extends State<SplashPage02> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: "image", child: Image.asset("assets/images/data1.png")),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Avec ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: "Poppins"),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Xiemie ',
                            style: TextStyle(
                                color: pink,
                                fontSize: 25,
                                fontFamily: "Poppins")),
                        TextSpan(text: 'soyez sûr que tout vos '),
                        TextSpan(
                            text: 'mots de passes ',
                            style: TextStyle(
                                color: purple,
                                fontFamily: "Poppins",
                                fontSize: 20)),
                        TextSpan(
                            text:
                                'sur toutes vos plateformes sont en sécurité'),
                      ],
                    ),
                  ),
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
              touch: SplashPage03(),
            ),
          ],
        ));
  }
}
