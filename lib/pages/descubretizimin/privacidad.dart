import 'package:flutter/material.dart';
import 'package:portfolio/utils/TextUtil.dart';

class Privacidad extends StatelessWidget {
  const Privacidad({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Politicas de calidad - Descubre Tizimin", style: TextStyle( fontSize: 40, color: Colors.white), textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Text(TextUtil.politicas, style: TextStyle( color: Colors.white, fontSize: 20),)
            ],
          ),
        ),
      ),
    );
  }
}
