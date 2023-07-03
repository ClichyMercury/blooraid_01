import 'package:blooraid_01/screens/root/root.dart';
import 'package:blooraid_01/screens/splashPage/SplashScreen.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(children: [
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
              )
            ]),
            SizedBox(
                height: 250,
                child: Image.asset(
                  "assets/images/data4.png",
                  fit: BoxFit.cover,
                )),
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
                  touch: SplashPage05(),
                ),
              ],
            )
            /* Text(
                "Desormais, n'ayez aucune crainte concernants vos données.\nGrace à la verification des réseaux environnents, vous êtes protégés en tout temps et tout en lieux",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ), */
          ],
        ),
      ),
    );
  }
}
