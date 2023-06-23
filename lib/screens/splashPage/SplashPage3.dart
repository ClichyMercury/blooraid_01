import 'package:blooraid_01/screens/connection/enterEmail.dart';

import 'package:blooraid_01/screens/splashPage/SplashPage4.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SplashPage03 extends StatefulWidget {
  const SplashPage03({
    super.key,
  });

  @override
  State<SplashPage03> createState() => _SplashPage03State();
}

class _SplashPage03State extends State<SplashPage03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: "image", child: Image.asset("assets/images/data3.png")),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Nous avons fait de  ",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Poppins'),
                      children: <TextSpan>[
                        TextSpan(
                            text: "l'authentification ",
                            style: TextStyle(
                                color: bleu,
                                fontFamily: 'Poppins',
                                fontSize: 25)),
                        TextSpan(
                          text: ", notre fer de lance. soyez sur qu'avec ",
                        ),
                        TextSpan(
                            text: "Xiemie",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: pink,
                              fontSize: 25,
                            )),
                        TextSpan(
                          text: ", vous êtes protégés.",
                        ),
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
              touch: SplashPage04(),
            ),
          ],
        ));
  }
}
