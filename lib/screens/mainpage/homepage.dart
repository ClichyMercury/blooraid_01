import 'package:blooraid_01/screens/mainpage/views/myPrivacy.dart';
import 'package:blooraid_01/screens/mainpage/views/mySecurity.dart';
import 'package:blooraid_01/screens/mainpage/views/myVault.dart';
import 'package:blooraid_01/screens/mainpage/views/mydevice.dart';
import 'package:blooraid_01/screens/mainpage/views/myfamily.dart';
import 'package:blooraid_01/widgets/MyListTile.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Container(),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ]),
      body: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [purple, lightBleu],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Image.asset("assets/images/data5.png"),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                height: 580,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(children: [
                  SizedBox(
                    height: 30,
                    child: TextField(
                      decoration: InputDecoration(
                          prefix: const Icon(Icons.search),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          hintTextDirection: TextDirection.ltr,
                          label: const Text("Search")),
                    ),
                  ),
                  const MyListTile(
                    imageName: "assets/icons/security.png",
                    data1: "My Security",
                    data2: "NO NEW DATA LEAKS",
                    changer: true,
                    touch: MySecurity(),
                  ),
                  const MyListTile(
                    imageName: "assets/icons/privacy.png",
                    data1: "My Privacy",
                    data2: "NO NEW ACCOUNTS MONITORED",
                    changer: false,
                    touch: MyPrivacy(),
                  ),
                  const MyListTile(
                    imageName: "assets/icons/device.png",
                    data1: "My Device",
                    data2: "NOT SECURED",
                    changer: true,
                    touch: MyDevice(),
                  ),
                  const MyListTile(
                    imageName: "assets/icons/famil.png",
                    data1: "My Family",
                    data2: "TAP TO SETUP",
                    changer: true,
                    touch: MyFamily(),
                  ),
                  const MyListTile(
                    imageName: "assets/icons/vault.png",
                    data1: "My Vault",
                    data2: "NO NEW DATA LEAKS",
                    changer: true,
                    touch: MyVault(),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
