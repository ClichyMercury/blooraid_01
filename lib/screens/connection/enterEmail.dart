import 'package:blooraid_01/screens/mainpage/homepage.dart';

import 'package:blooraid_01/widgets/CustumButton.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class EnterYourEmail extends StatefulWidget {
  const EnterYourEmail({super.key});

  @override
  State<EnterYourEmail> createState() => _EnterYourEmailState();
}

class _EnterYourEmailState extends State<EnterYourEmail> {
  TextEditingController emailCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Hero(tag: "image", child: Image.asset("assets/images/data1.png")),
            TextFormField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.start,
              obscureText: false,
              controller: emailCtrl,
              decoration: InputDecoration(
                hintText: "email@domain.com",
                floatingLabelBehavior: FloatingLabelBehavior.auto,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                hintTextDirection: TextDirection.ltr,
                labelText: 'Email',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Enter your Email please. !!';
                }
                return null;
              },
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: const MyCustumButton(
        text: "Next",
        icon: LineAwesomeIcons.arrow_right,
        touch: MyHomePage(),
      ),
    );
  }
}
