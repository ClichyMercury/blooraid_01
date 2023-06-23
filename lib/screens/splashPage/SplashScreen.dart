import 'package:blooraid_01/screens/connection/enterEmail.dart';

import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SplashPage05 extends StatefulWidget {
  const SplashPage05({
    super.key,
  });

  @override
  State<SplashPage05> createState() => _SplashPage05State();
}

class _SplashPage05State extends State<SplashPage05> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(tag: "image", child: Image.asset("assets/images/data5.png")),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Avec ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'Poppins'),
                      children: <TextSpan>[
                        TextSpan(
                            text: "l'equipe Xiemie\n",
                            style: TextStyle(color: bleu, fontSize: 25)),
                        TextSpan(
                            text:
                                ',vous avez un assistance personnalisée en cas de problème concernant votre confidentialité en ligne ou vos données personnelles'),
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
              touch: EnterYourEmail(),
            ),
          ],
        ));
  }
}
