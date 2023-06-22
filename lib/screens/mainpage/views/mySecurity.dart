import 'package:blooraid_01/widgets/CustumAppBar.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/viewcard.dart';
import 'package:flutter/material.dart';

class MySecurity extends StatelessWidget {
  const MySecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: myCustumAppBar(context, "My Security"),
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
                  title: "Check contacts for data leaks",
                  description:
                      "Your network is a vital part of your security. If one of your contacts has a breach, then you could be at risk as well",
                  buttonText: "Check contacts for leaks",
                  icon: Icons.people),
              ViewCard(
                  choose: true,
                  rowdata: "12h ago",
                  title: "No new leaks",
                  description:
                      "Xiemie scanned the internet for your data 4 times this week.",
                  buttonText: "Check Another Email",
                  icon: Icons.people)
            ],
          ),
        ),
      ),
    );
  }
}
