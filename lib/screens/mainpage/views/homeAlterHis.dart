import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/mySecurity.dart';
import 'package:blooraid_01/screens/mainpage/views/homepage/offices/offices.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class AlterHisHome extends StatefulWidget {
  const AlterHisHome({super.key});

  @override
  State<AlterHisHome> createState() => _AlterHisHomeState();
}

class _AlterHisHomeState extends State<AlterHisHome> {
  bool state = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      /* appBar: AppBar(
        leading: Icon(
          Icons.info,
          color: Colors.white,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Xiemie",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ), */
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [pink, bleu],
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius:
                    const BorderRadius.vertical(bottom: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Xiemie",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 55),
                  Text(
                    "votre outil de",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Cyberprotection",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        rowContainer(Icons.help_center, "Aides", () {}),
                        rowContainer(Icons.school, "Astuces", () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Offices()));
                        }),
                        rowContainer(Icons.security, "Securité", () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MySecurity()));
                        }),
                        rowContainer(
                            LineAwesomeIcons.wired_network, "RS", () {}),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    gridContainer("Income", "7.664,63", Icons.download, state),
                    gridContainer("Income", "7.664,63", Icons.download, state),
                  ],
                ),
                Column(
                  children: [
                    gridContainer("Income", "7.664,63", Icons.download, state),
                    Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [pink, bleu],
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(25),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white.withOpacity(0.3)),
                            child: Icon(
                              Icons.download,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Text(
                            "Income",
                            style: TextStyle(color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              "7.664,63",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 50,
            )
          ],
        ),
      ),
    );
  }

  GestureDetector gridContainer(String name, price, IconData icon, bool state) {
    return GestureDetector(
      onTap: () {
        setState(() {
          state = !state;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        height: 150,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 40,
              width: 40,
              child: Icon(
                icon,
                color: Colors.black,
                size: 20,
              ),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                price,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector rowContainer(IconData icon, String name, VoidCallback touch) {
    return GestureDetector(
      onTap: touch,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 95,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.2)),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white.withOpacity(0.3)),
              child: Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              name,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
