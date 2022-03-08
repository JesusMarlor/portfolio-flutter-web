import 'package:flutter/material.dart';
import 'package:portfolio/pages/mobile/dashboardmobile.dart';
import 'package:portfolio/pages/dashboard/dashboardweb.dart';
import 'package:portfolio/utils/responsive.dart';


Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'dashboard': (BuildContext context) =>  Responsive.isMobile(context) ? const Dashboardmobile() : const Dashboardweb(),
  };
}
