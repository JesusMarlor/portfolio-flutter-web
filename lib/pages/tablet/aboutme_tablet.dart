import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/bg_painter.dart';
import 'package:portfolio/widgets/social_networks.dart';

class AboutMeTablet extends StatelessWidget {
  const AboutMeTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                const SizedBox( height: 20 ),
                SizedBox(
                    height: 220,
                    child: Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(40.0),
                            child: Image.asset("assets/images/profile.png", fit: BoxFit.fill, )
                        ),
                        Positioned(
                            bottom: 0,
                            left: 60,
                            child: Lottie.asset('assets/lottie/codeMobile.json')
                        ),
                      ],
                    )
                ),
                const SizedBox( height: 20 ),
                Bounce(
                  child: Row(
                    children: const [
                      Expanded(
                          child: Text("Jesús Marfil | Software developer", style: AppTheme.titleTablet, textAlign: TextAlign.center, )
                      ),
                    ],
                  ),
                ),
                const Text("Autodidacta, me apasionan las nuevas tecnologías, Android, desarrollo de apps, smartphones, wearables.",style: AppTheme.subtitleTablet),
                const SizedBox( height: 10 ),
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
