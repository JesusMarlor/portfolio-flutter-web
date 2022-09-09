import 'package:flutter/material.dart';
import 'package:portfolio/pages/descubretizimin/delete_data.dart';
import 'package:portfolio/pages/descubretizimin/privacidad.dart';
import 'package:portfolio/pages/descubretizimin/qr_code.dart';
import 'package:portfolio/pages/mobile/dashboard_mobile.dart';
import 'package:portfolio/pages/desktop/dashboard_desktop.dart';
import 'package:portfolio/utils/responsive.dart';



Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) =>  Responsive.isMobile(context) ? const DashboardMobile() : const DashboardDesktop(),
    '/privacidad': (BuildContext context) =>  const Privacidad(),
    '/instrucciones-de-eliminacion-de-datos': (BuildContext context) =>  const DeleteData(),
    '/code-qr-tizimin': (BuildContext context) =>  const QrCode(),
  };
}
