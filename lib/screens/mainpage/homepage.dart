import 'package:blooraid_01/widgets/MyListTile.dart';
import 'package:blooraid_01/widgets/alertDialog.dart';
import 'package:blooraid_01/widgets/blackBox.dart';
import 'package:blooraid_01/widgets/constant.dart';
import 'package:blooraid_01/widgets/myCustumAppbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: myCustumAppBar("Xiemie"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 10),
              BlackBox(),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "Formations",
                  style: GoogleFonts.ptSans(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MyListTile(
                icon: Icons.people_alt_outlined,
                text: "Parents",
                data: "Comment proteger les enfants\ndes cybercriminels ?",
                price: "9.99",
                ontap: () {
                  showAlertDialog(context,
                      icon: Icons.people_alt_outlined,
                      content:
                          "ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      title:
                          'Comment proteger les enfants des cybercriminels ?',
                      cancelActionText: "Don't allow",
                      defaultActionText: 'Okay');
                },
              ),
              MyListTile(
                icon: LineAwesomeIcons.facebook_f,
                text: "Comunity Manager",
                data: "comment proteger son compte\nfacebook ?",
                price: "29.99",
                ontap: () {
                  showAlertDialog(context,
                      icon: LineAwesomeIcons.facebook_f,
                      content:
                          "ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                      title: 'Comment proteger le compte facebook ?',
                      cancelActionText: "Don't allow",
                      defaultActionText: 'Okay');
                },
              ),
            ]),
          ),
        ));
  }
}
