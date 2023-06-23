
import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyPrivacy extends StatelessWidget {
  const MyPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "My Privacy",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
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
                      description:
                          "Decide what information google keeps about you",
                      buttonText: "Connect Google",
                      icon: LineAwesomeIcons.google_logo),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
