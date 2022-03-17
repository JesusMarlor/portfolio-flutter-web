import 'package:flutter/material.dart';
import 'package:portfolio/pages/mobile/dashboard_mobile.dart';
import 'package:portfolio/pages/desktop/dashboard_desktop.dart';
import 'package:portfolio/utils/responsive.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'desktop': (BuildContext context) =>  Responsive.isMobile(context) ? const DashboardMobile() : const DashboardDesktop(),
  };
}
