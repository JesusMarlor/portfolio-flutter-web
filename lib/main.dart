import 'package:flutter/material.dart';
import 'package:portfolio/pages/dashboard/dashboardmobile.dart';
import 'package:portfolio/pages/dashboard/dashboardweb.dart';
import 'package:portfolio/utils/responsive_layout.dart';
import 'package:portfolio/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portolio JM',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ResponsiveLayout(
          mobileScreenLayout: Dashboardmobile(),
          webScreenLayout: Dashboardweb()
      ),
        routes: getApplicationRoutes()
    );
  }
}
