import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';

class MySecurity extends StatelessWidget {
  const MySecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "My security",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "password manager",
                  description:
                      "here are stored all your passwords. you also have the possibility of creating new, robust and reliable ones without necessarily retaining them",
                  buttonText: "Access to your password manager",
                  icon: Icons.password),
              ViewCard(
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
