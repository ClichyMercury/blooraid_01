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
                      text: 'Help ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 33,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'your family\n',
                            style: TextStyle(color: bleu)),
                        TextSpan(text: 'be safe online'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: const MyCustumButton(
          text: "   Get Started",
          icon: LineAwesomeIcons.arrow_right,
          touch: EnterYourEmail(),
        ));
  }
}
