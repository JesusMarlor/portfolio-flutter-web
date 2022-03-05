import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/widgets/header_web.dart';

class Dashboardweb extends StatelessWidget {
  const Dashboardweb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            children: [
              const HeaderWeb(),
              const SizedBox( height: 10 ),
              Container(
                child: Text("Aqui lo demas"),
              )
            ],
          ),
        )
    );
  }
}
