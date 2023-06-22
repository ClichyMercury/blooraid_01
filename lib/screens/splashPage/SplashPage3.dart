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
              Hero(tag:"image",child: Image.asset("assets/images/data3.png")),
              Column(
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Search an email to\nsee its ',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 33,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'security \nreport',
                            style: TextStyle(color: purple)),
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
          touch: SplashPage04(),
        ));
  }
}
