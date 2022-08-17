import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thesis_s2022/components/bun_card_list.dart';
import 'package:thesis_s2022/components/filling_list.dart';
import 'package:thesis_s2022/components/meal_card_list.dart';
import 'package:thesis_s2022/components/vegetable_card_list.dart';

/// Common text & layout
const String appTitleText = 'Magic Burger ✨';
const Color bodyColor = Color.fromRGBO(62, 39, 35, 1);
const Color titleColor = Color.fromRGBO(93, 64, 55, 1);
const Color transparent = Color.fromARGB(0, 255, 255, 255);
const Color background = Color.fromRGBO(255, 255, 255, 1);
const Color primary = Color.fromRGBO(255, 193, 7, 1);
const double titleSize = 32;
const TextStyle leadTextStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

/// Icons
const menuIcon = Icon(Icons.menu);
const closeIcon = Icon(Icons.close);
const removeIcon = Icon(Icons.remove);
const addIcon = Icon(Icons.add);

final String? defaultFontFamily = GoogleFonts.varelaRound().fontFamily;

/// Appbar
const TextStyle appTitleTextStyle = TextStyle(
  color: titleColor,
  fontSize: titleSize,
);
final TextStyle titleFont = GoogleFonts.chicle(textStyle: appTitleTextStyle);
final Text appTitle = Text(appTitleText, style: titleFont);

/// DraggableSheet
const minChildSize = 0.15;
const maxChildSize = 0.5;
const draggableSnapSizes = [minChildSize, maxChildSize];
const draggableDivider = SizedBox(
  width: 80,
  height: 20,
  child: Divider(
    thickness: 5,
  ),
);
const draggableSheetSteps = [
  BunCardList(),
  FillingList(),
  MealCardList(),
];

/// DraggableSheet Stepper
const stepperActiveColor = Color.fromRGBO(255, 236, 179, 1);
const stepperActiveBorderColor = Color.fromRGBO(255, 241, 45, 0.49);
const stepperLineColor = Color.fromRGBO(0, 0, 0, 0.451);
const stepReachAnimationDuration = Duration(seconds: 1, milliseconds: 500);
const stepperIcons = [
  Icon(Icons.lunch_dining_outlined),
  Icon(Icons.lunch_dining),
  Icon(Icons.fastfood),
];

/// Burger Layout
const double initImageOffset = 40;
const double minImageOffset = 20;
const double maxImageOffset = 80;

/// Spacing s=spacing, A=all  n=n*8
const sA0 = EdgeInsets.all(0);
const sA2 = EdgeInsets.all(16.0);
const sA6 = EdgeInsets.all(48.0);
const sV2 = EdgeInsets.symmetric(vertical: 16.0);
const sH2 = EdgeInsets.symmetric(horizontal: 16.0);
const sT2 = EdgeInsets.only(top: 16.0);
