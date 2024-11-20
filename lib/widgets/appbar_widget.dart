import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget basicAppBar(
    BuildContext context, GlobalKey<ScaffoldState> scaffoldKey) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0.5,
    title: Column(
      children: [
        Text(
          'COFFEE MENU',
          style: GoogleFonts.playfairDisplay(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            color: Colors.black87,
          ),
        ),
        Text(
          'Choose your favorite drink',
          style: GoogleFonts.lato(
            fontSize: 14,
            color: Colors.grey[600],
            letterSpacing: 1,
          ),
        ),
      ],
    ),
    centerTitle: true,
  );
}
