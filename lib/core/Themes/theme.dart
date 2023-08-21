import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class MyTheme {
  static get darkTheme => ThemeData(
        fontFamily: GoogleFonts.lato.toString(),
        colorScheme: ColorScheme.dark(primary: MyColors.kPrimaryColor),
        useMaterial3: true,
      );
}
