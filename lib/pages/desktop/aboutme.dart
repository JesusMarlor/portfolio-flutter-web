import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/bg_painter.dart';
import 'package:portfolio/widgets/social_networks.dart';

import '../../utils/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            flex: 3,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .05,),
                SizedBox(
                  height: 320,
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: Image.asset("assets/images/profile.png", fit: BoxFit.fill, )
                      ),
                      Positioned(
                        bottom: 0,
                          left: 60,
                          child: Lottie.asset('assets/lottie/code.json')
                      ),
                    ],
                  )
                ),
                const SizedBox( height: 20 ),
                Bounce(
                  child: Row(
                    children: const [
                      Expanded(
                          child: Text("Jesús Marfil", style: AppTheme.title, textAlign: TextAlign.center, ) //| Software developer
                      ),
                    ],
                  ),
                ),
                const Text("Programador de profesión y por pasión. \nExperto en desarrollo móvil.",style: AppTheme.subtitle, textAlign: TextAlign.center,),
                SizedBox(height: MediaQuery.of(context).size.height * .02,),
                const Text(Constants.about,style: AppTheme.body2, textAlign: TextAlign.center,),
                SizedBox(height: MediaQuery.of(context).size.height * .02,),
                const SocialNetworks()
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
