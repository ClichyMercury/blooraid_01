import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar myCustumAppBar(String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: GoogleFonts.ptSans(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.info),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              )),
        )
      ]);
}
