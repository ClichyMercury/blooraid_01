import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';

class ViewCard extends StatelessWidget {
  const ViewCard(
      {super.key,
      required this.choose,
      required this.rowdata,
      required this.title,
      required this.description,
      required this.buttonText,
      required this.icon});

  final bool choose;
  final String rowdata;
  final String title;
  final String description;
  final String buttonText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18)),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [pink, bleu],
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Icon(
                      icon,
                      color: Colors.white,
                    )),
                  ),
                  choose
                      ? Text(
                          rowdata,
                          style: TextStyle(color: bleu),
                        )
                      : Container()
                ],
              ),
            ),
            const SizedBox(height: 25),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [pink, bleu],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
