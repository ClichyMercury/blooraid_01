import 'package:blooraid_01/screens/root/root.dart';
import 'package:google_fonts/google_fonts.dart';
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
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 40),
            Image.asset("assets/images/data2.png"),
            Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: "Bienvenue sur\n",
                    style: GoogleFonts.ptSans(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Xiemie",
                          style: GoogleFonts.ptSans(
                            fontWeight: FontWeight.bold,
                            color: pink,
                            fontSize: 35,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 60,
                  child: Center(
                    child: Text(
                      "Votre compagnon pour votre\nconfidentialité numérique numérique\n Votre compagnon pour votre",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Root()));
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 18),
                  )),
              MyCustumButton(
                text: " Commencer",
                icon: LineAwesomeIcons.arrow_right,
                touch: SplashPage02(),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
