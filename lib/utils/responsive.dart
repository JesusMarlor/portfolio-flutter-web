import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    Key key,
    @required this.mobile,
    this.tablet,
    @required this.desktop,
  }) : super(key: key);

// This size work fine on my design, maybe you need some customization depends on your design

  // This isMobile, isTablet, isDesktop helep us later
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1281 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1281;

  ///adaptacion para web/mobile
  static double get20(BuildContext context){
    return isMobile( context ) ?
    MediaQuery.of(context).size.height * .2 :
    MediaQuery.of(context).size.width * .2;
  }

  static double get08(BuildContext context){
    return isMobile( context ) ?
    20 :
    MediaQuery.of(context).size.width * .08;
  }

  static double get04(BuildContext context){
    return isMobile( context ) ?
    MediaQuery.of(context).size.height * .04 :
    MediaQuery.of(context).size.width * .04;
  }

  static double get02(BuildContext context){
    return isMobile( context ) ?
    25 :
    MediaQuery.of(context).size.width * .02;
  }


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet;
    }
    // Or less then that we called it mobile
    else {
      return mobile;
    }
  }
}
