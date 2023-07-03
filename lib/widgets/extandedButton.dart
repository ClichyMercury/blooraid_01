import 'package:flutter/material.dart';

class ExtendedButton extends StatelessWidget {
  const ExtendedButton(
      {super.key, required this.touch, required this.buttonText});

  final VoidCallback touch;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: touch,
      child: Container(
        height: 45,
        width: 145,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1.0, color: Colors.white)),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
