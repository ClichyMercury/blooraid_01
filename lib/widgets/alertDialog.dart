import 'package:flutter/material.dart';

Future showAlertDialog(
  BuildContext context, {
  required IconData icon,
  required String title,
  required String content,
  String? cancelActionText,
  required String defaultActionText,
}) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(50),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Container(
            height: 280,
            width: 250,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                ),
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                Column(
                  children: [
                    Text(
                      content,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.timelapse,
                              color: Colors.red,
                            ),
                            Text(
                              "36 heures",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.price_change,
                              color: Colors.red,
                            ),
                            Text(
                              "35000 frs",
                              style: TextStyle(color: Colors.red),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 63),
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
                ),
              ],
            ),
          ),
        );
      });
}
