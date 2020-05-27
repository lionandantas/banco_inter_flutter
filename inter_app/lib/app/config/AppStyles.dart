import 'dart:ui';
import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:interapp/app/utils/hexcolor.dart';

class AppStyles {
  // static Color primaryColor = HexColor("#10C66F");
  static Color primaryColor =  HexColor("#FF6D08");//HexColor("#4F008D");HexColor("#1E0136");
  static Color greyMedium = HexColor("#f5f6fa");
  static List<Color> gradient = [Color(0xFFFF6D08), Color(0xFFF87C08)];
  
  static Brightness fidelBrightness =
      Platform.isAndroid ? Brightness.dark : Brightness.light;
}


