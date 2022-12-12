import 'package:donorin/utilities/color.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';


TextStyle headText = GoogleFonts.poppins(
  color: whiteColor,
  fontWeight: FontWeight.w700,
  fontSize: 30,
);

TextStyle descriptionText = GoogleFonts.poppins(
  color: whiteColor,
  fontWeight: FontWeight.w400,
  fontSize: 16,
);

TextStyle descriptionSign = GoogleFonts.poppins(
  color: whiteColor,
  fontWeight: FontWeight.w400,
  fontSize: 20,
);

TextStyle btnTextSgn = GoogleFonts.poppins(
  color: whiteColor,
  
  fontWeight: FontWeight.w700,
  fontSize: 15,
);

TextStyle textBoldDirect = GoogleFonts.poppins(
  color: whiteColor,
  fontWeight: FontWeight.w700,
  fontSize: 12,
);

ButtonStyle flatButtonStylePos = TextButton.styleFrom(
  primary: Colors.black87,
  backgroundColor: greenColor,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);

ButtonStyle flatButtonStyleNeg = TextButton.styleFrom(
  primary: Colors.black87,
  backgroundColor: warmButtonColor,
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2.0)),
  ),
);
