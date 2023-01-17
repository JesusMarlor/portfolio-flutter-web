
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
  static const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
  static const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
  static const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);
  static const Color primaryColor = Color(0xff0e8ab4);//0xff54bf54
  static const Color colorPrimaryDark = Color(0xffaa0000);
  static const Color activeColor = Color(0xffd43838);
  static const Color grayPrimaryColor = Color(0xffF0F0F0);//0xff54bf54

  static const Color defaultColor = Color(0xff9ccc65);
  static const Color successLight = Color(0xff85f785);//#5cb85c
  static const Color success = Color(0xff5cb85c);//#5cb85c
  static const Color info = Color(0xff5bc0de);//#5bc0de

  static const Color cardBg = Color(0xff11283f);//#5bc0de

  ///for desktop
  static const TextStyle title =  TextStyle( fontSize: 45, fontWeight: FontWeight.bold, color: kPrimaryColor);
  static const TextStyle subtitle = TextStyle( fontSize: 35, color: Colors.white );
  static const TextStyle body = TextStyle( fontSize: 20, color: Colors.white );
  static const TextStyle body2 = TextStyle( fontSize: 16, color: Colors.white );
  static const TextStyle titleSection =  TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: kPrimaryColor);

  ///for tablet
  static const TextStyle titleTablet =  TextStyle( fontSize: 35, fontWeight: FontWeight.bold, color: kPrimaryColor);
  static const TextStyle subtitleTablet = TextStyle( fontSize: 25, color: Colors.white );
  static const TextStyle bodyTablet = TextStyle( fontSize: 15, color: Colors.white );
  static const TextStyle titleSectionTablet =  TextStyle( fontSize: 30, fontWeight: FontWeight.bold, color: kPrimaryColor);

  ///for mobile
  static const TextStyle titleMobile =  TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: kPrimaryColor);
  static const TextStyle subtitleMobile = TextStyle( fontSize: 18,  color: Colors.white );
  static const TextStyle bodyMobile = TextStyle( fontSize: 15,  color: Colors.white );
  static const TextStyle bodyMobile2 = TextStyle( fontSize: 12,  color: Colors.white );
  static const TextStyle titleSectionMobile =  TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor);


}