import 'package:flutter/material.dart';
import 'package:portfolio/pages/dashboard/dashboardweb.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Dashboardweb(),
      ),
    );
  }
}
