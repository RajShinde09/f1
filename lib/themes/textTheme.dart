import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ptextTheme{
  static TextTheme lighttextTheme = TextTheme(
      headline1: GoogleFonts.abel(color: Colors.black),
      headline2: GoogleFonts.abel(color: Colors.black87,fontSize: 50.0,fontWeight: FontWeight.bold),
      subtitle2: GoogleFonts.montserrat(color: Colors.black87,fontSize: 18,fontWeight: FontWeight.bold),
  );

  static TextTheme darktextTheme = TextTheme(
        headline1: GoogleFonts.abel(color: Colors.white60),
        headline2: GoogleFonts.abel(color: Colors.white60,fontSize: 50.0,fontWeight: FontWeight.bold),
        subtitle2: GoogleFonts.montserrat(color:Colors.white60,fontSize: 18,fontWeight: FontWeight.bold),
  );
}