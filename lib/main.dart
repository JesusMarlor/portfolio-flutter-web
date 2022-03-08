import 'package:flutter/material.dart';
import 'package:portfolio/pages/mobile/dashboardmobile.dart';
import 'package:portfolio/pages/dashboard/dashboardweb.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/utils/responsive_layout.dart';
import 'package:portfolio/utils/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DashboardProvider>(create: (_) => DashboardProvider()),
      ],
      child: MaterialApp(
        title: 'Portolio JM',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Roboto"
        ),
        home: const ResponsiveLayout(
            mobileScreenLayout: Dashboardmobile(),
            webScreenLayout: Dashboardweb()
        ),
          routes: getApplicationRoutes()
      ),
    );
  }
}
