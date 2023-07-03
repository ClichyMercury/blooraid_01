import 'package:blooraid_01/screens/root/root.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  ), */
              ],
            ),
            Image.asset("assets/images/data5.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Root()));
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
                  touch: Root(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
