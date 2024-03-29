import 'package:flutter/material.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/routes.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
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
        title: 'Portfolio JM',
        debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          darkTheme: Theme.of(context).copyWith(
            scaffoldBackgroundColor: AppTheme.kBackgroundColor,
            primaryColor: AppTheme.kPrimaryColor,
            canvasColor: AppTheme.kBackgroundColor,
          ),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: "Roboto"
        ),
        initialRoute: "/",
        /*home: const ResponsiveLayout(
            mobileScreenLayout: DashboardMobile(),
            tabletScreenLayout: DashboardTablet(),
            webScreenLayout: DashboardDesktop()
        ),*/
          routes: getApplicationRoutes()
      ),
    );
  }
}
