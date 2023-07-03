import 'package:blooraid_01/screens/root/root.dart';
import 'package:blooraid_01/screens/splashPage/SplashPage3.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Choose your top goal",
                  style: GoogleFonts.ptSans(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Faster pay is here to help your\nberst finacial life",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ptSans(
                      fontSize: 20, fontWeight: FontWeight.normal),
                ),
                /* RichText(
                  text: TextSpan(
                    text: 'Avec ',
                    style: GoogleFonts.ptSans(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Xiemie ',
                          style: TextStyle(
                            color: pink,
                            fontSize: 25,
                          )),
                      TextSpan(text: 'soyez sûr que tout vos '),
                      TextSpan(
                          text: 'mots de passes ',
                          style: TextStyle(color: purple, fontSize: 20)),
                      TextSpan(
                          text: 'sur toutes vos plateformes sont en sécurité'),
                    ],
                  ),
                ), */
              ],
            ),
            Image.asset("assets/images/data1.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                  text: "  Commencer",
                  icon: LineAwesomeIcons.arrow_right,
                  touch: SplashPage03(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
