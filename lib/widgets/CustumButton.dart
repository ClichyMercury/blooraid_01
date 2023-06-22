import 'package:blooraid_01/widgets/constant.dart';
import 'package:flutter/material.dart';

class MyCustumButton extends StatelessWidget {
  const MyCustumButton(
      {super.key, required this.text, required this.icon, required this.touch});

  final String text;
  final IconData icon;
  final Widget touch;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => touch));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 75,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [pink, bleu],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Icon(
                icon,
                color: Colors.white,
              )),
            )
          ],
        ),
      ),
    );
  }
}
