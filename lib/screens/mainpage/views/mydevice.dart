import 'package:blooraid_01/widgets/CustumAppBar.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyDevice extends StatelessWidget {
  const MyDevice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: myCustumAppBar(context, "My Device"),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [purple, lightBleu],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 80),
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
