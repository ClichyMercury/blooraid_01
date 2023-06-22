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
              Hero(tag:"image",child: Image.asset("assets/images/data1.png")),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Reduce ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 33,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'spam calls \n',
                            style: TextStyle(color: purple)),
                        TextSpan(text: 'from your phone'),
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
          touch: SplashPage03(),
        ));
  }
}
