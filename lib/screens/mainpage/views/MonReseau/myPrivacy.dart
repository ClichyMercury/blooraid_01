import 'package:blooraid_01/widgets/alertDialog%20copy.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/myCustumAppbar.dart';
import 'package:flutter/material.dart';

class MyPrivacy extends StatelessWidget {
  const MyPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myCustumAppBar("Mon Réseau"),
      body: Padding(
        padding: EdgeInsets.all(15.0),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 25),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [pink, bleu],
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                              ),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Icon(
                            Icons.wifi,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Prevent your personal data from leaking on unsecured Wi-Fi networks.",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showAlertDialog2(
                          title: "Enable Wi-Fi Monitoring",
                          defaultActionText: "Ok",
                          content:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.but also the leap into electronic typesetting, remaining essentially ",
                          cancelActionText: "Cancel",
                          context,
                          icon: Icons.wifi);
                    },
                    child: Container(
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Turn On Wi-Fi Alerts",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
