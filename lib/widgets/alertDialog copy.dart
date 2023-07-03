import 'package:flutter/material.dart';

Future showAlertDialog2(
  BuildContext context, {
  required String title,
  required String content,
  String? cancelActionText,
  required String defaultActionText,
  required IconData icon,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          content: Text(
            content,
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          actions: [
            if (cancelActionText != null)
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text(cancelActionText),
              ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: Text(defaultActionText),
            ),
          ],
        );
      });
}
