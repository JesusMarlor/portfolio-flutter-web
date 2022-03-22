import 'package:flutter/material.dart';
import 'package:portfolio/utils/responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget tabletScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({
    Key key,
    @required this.mobileScreenLayout,
    @required this.tabletScreenLayout,
    @required this.webScreenLayout,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 1281) {
          return webScreenLayout;
        }else if( constraints.maxWidth < 1281 && constraints.maxWidth >= 850 ){
          return tabletScreenLayout;
        }else{
          return mobileScreenLayout;
        }
      },
    );
  }
}
