import 'package:blooraid_01/widgets/MyListTile.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/extandedButton.dart';
import 'package:flutter/material.dart';

class EmailCheck extends StatelessWidget {
  const EmailCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 25),
                    child: Container(
                      height: 220,
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        children: [
                          SizedBox(height: 45),
                          Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              autocorrect: false,
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.start,
                              obscureText: false,
                              decoration: InputDecoration(hintText: "Username"),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Enter your username please. !!';
                                }
                                return null;
                              },
                            ),
                          ),
                          SizedBox(height: 10),
                          ExtendedButton(touch: () {}, buttonText: "Valider"),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [pink, bleu],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(60)),
                    ),
                  ),
                ],
              ),
              MyListTile(
                text: 'text',
                data: 'data',
                price: 'price',
                icon: Icons.tab,
                ontap: () {},
              ),
              MyListTile(
                text: 'text',
                data: 'data',
                price: 'price',
                icon: Icons.tab,
                ontap: () {},
              ),
              MyListTile(
                text: 'text',
                data: 'data',
                price: 'price',
                icon: Icons.tab,
                ontap: () {},
              ),
              MyListTile(
                text: 'text',
                data: 'data',
                price: 'price',
                icon: Icons.tab,
                ontap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
