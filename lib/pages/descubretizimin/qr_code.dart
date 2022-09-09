import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/utils/utils.dart';

import '../../utils/responsive.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.7],
            colors: [
              Color(0xff225B66),
              Colors.white
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Descarga la App", style: TextStyle( fontSize: 40, color: Colors.white), textAlign: TextAlign.center,),
              const SizedBox(height: 20,),
              Image.asset("assets/images/icon_launcher_t.png", height: 200, width: 200,),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.green,
                  elevation: 5.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onPressed:(){
                  Utils().openUrl("https://bit.ly/DescubreTizimin");
                },
                icon: const FaIcon(FontAwesomeIcons.android, color: Colors.white,),
                label: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                width: 200,
                  child: Text( 'Android', style: TextStyle(
                    color: Colors.white,
                    fontSize: 29.0,
                  ), textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 20,),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.black87,
                  primary: Colors.green,
                  elevation: 5.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                onPressed:(){
                  Utils().openUrl("https://apple.co/3ENz8My");
                },
                icon: const FaIcon(FontAwesomeIcons.apple, color: Colors.white,),
                label: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  width: 200,
                  child: Text( 'iOs', style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                  ), textAlign: TextAlign.center,),
                ),
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child:  Responsive.isMobile(context) ?
                    InkWell(
                        onTap: ()=> Utils().openUrl("https://bit.ly/DescubreTizimin"),
                        child: Image.asset("assets/images/disponibleps.png"))
                        :  InkWell(
                        onTap: ()=> Utils().openUrl("https://bit.ly/DescubreTizimin"),
                        child: Lottie.asset('assets/lottie/playstore.json')),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    flex: 5,
                    child: Responsive.isMobile(context) ?
                    InkWell(
                      onTap: ()=>Utils().openUrl("https://apple.co/3ENz8My"),
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Image.asset("assets/images/disponibleas.png")),
                    )
                        : Lottie.asset('assets/lottie/appstore.json'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
