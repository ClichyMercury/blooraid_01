import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyVault extends StatelessWidget {
  const MyVault({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "My Assist",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "two-Factor Codes",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "No two-factor codes yet",
                  description:
                      "You haven't enabled two-factor authentification yet. start by scanning your first account",
                  buttonText: "Add 2FA",
                  icon: Icons.key),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "backup Codes May Be Available",
                  description:
                      "if you activated 2FA previously with Xiemie, connect your Google Drive to retrieve your backup codes.",
                  buttonText: "Connect Google Drive",
                  icon: LineAwesomeIcons.google_drive),
              SizedBox(height: 25),
              Text(
                "Archives",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "No Archives Yet",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "You haven't archived any content yet When you do, they'll show up here",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
