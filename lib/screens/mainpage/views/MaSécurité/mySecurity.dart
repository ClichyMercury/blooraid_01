import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/passwordManager/emailCheck.dart';
import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/passwordManager/passwordManager.dart';
import 'package:blooraid_01/widgets/myCustumAppbar.dart';
import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';

class MySecurity extends StatelessWidget {
  const MySecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustumAppBar("Ma Sécurité"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Gestionnaire de mot de passe",
                  description:
                      "here are stored all your passwords. you also have the possibility of creating new, robust and reliable ones without necessarily retaining them",
                  buttonText: "Access to your password manager",
                  icon: Icons.password,
                  touch: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordManager()));
                  }),
              ViewCard(
                choose: false,
                rowdata: "",
                title: "Verification d'email",
                description:
                    "here are stored all your passwords. you also have the possibility of creating new, robust and reliable ones without necessarily retaining them",
                buttonText: "Verfier votre email",
                icon: Icons.email,
                touch: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmailCheck()));
                },
              ),
              ViewCard(
                  touch: () {},
                  choose: false,
                  rowdata: "",
                  title: "Authentification",
                  description:
                      "Xiemie ensures that all your links and QR codes are authentic and do not pose a threat to your privacy",
                  buttonText: "Check link or QR code",
                  icon: Icons.check)
            ],
          ),
        ),
      ),
    );
  }
}
