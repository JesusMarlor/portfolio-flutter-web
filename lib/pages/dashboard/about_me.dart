import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/social_networks.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      //color: Colors.black,
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
                Row(
                  children: const [
                    Expanded(
                        child: Text("Jesús Marfil | Software developer", style: AppTheme.title, textAlign: TextAlign.center, )
                    ),
                  ],
                ),
                const Text("Autodidacta, me apasionan las nuevas tecnologías, Android, desarrollo de apps, smartphones, wearables.",style: AppTheme.subtitle),
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
