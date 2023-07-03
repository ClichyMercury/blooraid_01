import 'package:blooraid_01/screens/root/root.dart';
import 'package:blooraid_01/screens/splashPage/SplashPage4.dart';
import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                  ) */
              ],
            ),
            Image.asset("assets/images/data3.png"),
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
                  touch: SplashPage04(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
