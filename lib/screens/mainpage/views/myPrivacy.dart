import 'package:blooraid_01/widgets/CustumAppBar.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyPrivacy extends StatelessWidget {
  const MyPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: myCustumAppBar(context,"My Privacy"),
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
                  title: "Blur your address",
                  description:
                      "Blur your address on Google Street View and keep your life private",
                  buttonText: "Secure your address",
                  icon: Icons.location_on),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Protect your LinkedIn",
                  description:
                      "Protect your Linkedin data from being used for ads, tracking , and thrid party sharing",
                  buttonText: "Connect LinkedIn",
                  icon: LineAwesomeIcons.linkedin),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Protect your Instagram",
                  description:
                      "Protect your Instagram data from being used for ads, tracking , and thrid party sharing",
                  buttonText: "Connect Instagram",
                  icon: LineAwesomeIcons.instagram),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Protect your Twitter",
                  description:
                      "Delete your old tweets so they don't stay online forever",
                  buttonText: "Connect twitter",
                  icon: LineAwesomeIcons.twitter),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "Cancel Alexa Listening",
                  description:
                      "Prevent Amazon from saving your Alexa voice recording",
                  buttonText: "Connect Alexa",
                  icon: LineAwesomeIcons.amazon_web_services__aws_),
              ViewCard(
                  choose: false,
                  rowdata: "",
                  title: "What does Google know about you ?",
                  description: "Decide what information google keeps about you",
                  buttonText: "Connect Google",
                  icon: LineAwesomeIcons.google_logo),
            ],
          ),
        ),
      ),
    );
  }
}
