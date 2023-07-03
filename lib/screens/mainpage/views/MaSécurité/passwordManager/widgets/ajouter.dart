import 'package:blooraid_01/screens/mainpage/views/MaS%C3%A9curit%C3%A9/passwordManager/widgets/nextPage.dart';
import 'package:blooraid_01/widgets/extandedButton.dart';
import 'package:flutter/material.dart';

class Ajouter extends StatelessWidget {
  const Ajouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
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
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                        decoration: InputDecoration(hintText: "password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your password please. !!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
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
                        decoration: InputDecoration(hintText: "Platform"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Enter your Platform please. !!';
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
              NextPage()
            ],
          ),
        ),
      ),
    );
  }
}
