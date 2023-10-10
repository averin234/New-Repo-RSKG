import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'my_colors.dart';
import 'my_font_size.dart';

class MyStyle {
  static TextStyle textTitleBlack = GoogleFonts.nunito(
      fontSize: MyFontSize.large2,
      fontWeight: FontWeight.bold);

  static TextStyle textParagraphBlack = GoogleFonts.nunito(
    color: MyColors.blackText,
    fontSize: MyFontSize.medium2,
  );
}
