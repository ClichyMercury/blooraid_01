import 'package:blooraid_01/screens/connection/enterEmail.dart';
import 'package:blooraid_01/screens/splashPage/SplashScreen.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SplashPage04 extends StatefulWidget {
  const SplashPage04({
    super.key,
  });

  @override
  State<SplashPage04> createState() => _SplashPage04State();
}

class _SplashPage04State extends State<SplashPage04> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  height: 250,
                  child: Hero(
                    tag: "image",
                    child: Image.asset(
                      "assets/images/data4.png",
                      fit: BoxFit.cover,
                    ),
                  )),
              const Column(
                children: [
                  Text(
                    "Desormais, n'ayez aucune crainte concernants vos données.\nGrace à la verification des réseaux environnents, vous êtes protégés en tout temps et tout en lieux",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
              touch: SplashPage05(),
            ),
          ],
        ));
  }
}
