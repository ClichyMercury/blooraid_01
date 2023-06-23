import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyDevice extends StatelessWidget {
  const MyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "My Device",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "",
                  description:
                      "Block advertisers and data brokers from tracking your ohone's online activities",
                  buttonText: "Turn on Block Trackers",
                  icon: Icons.block),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Device Security",
                  description:
                      "Your device requires an upgrade. Tap now to make sure you are up-to-date",
                  buttonText: "Upgrade Security",
                  icon: LineAwesomeIcons.phone),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "",
                  description:
                      "Prevent your personal data from leaking on unsecured Wi-Fi networks.",
                  buttonText: "Turn On Wi-Fi Alerts",
                  icon: Icons.wifi),
            ],
          ),
        ),
      ),
    );
  }
}
