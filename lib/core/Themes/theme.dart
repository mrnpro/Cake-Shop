import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyTheme {
  static get darkTheme => ThemeData(
        colorScheme: ColorScheme.dark(primary: MyColors.kPrimaryColor),
        useMaterial3: true,
      );
}
