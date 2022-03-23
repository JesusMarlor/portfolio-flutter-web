import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/card_skill.dart';
import 'package:portfolio/widgets/social_networks.dart';
import 'package:provider/provider.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      //color: Colors.black,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 120,
                child: Stack(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(40.0),
                        child: Image.asset("assets/images/profile.png", fit: BoxFit.fill, )
                    ),
                    Positioned(
                        bottom: 0,
                        left: 20,
                        child: Lottie.asset('assets/lottie/codeMobile.json')
                    ),
                  ],
                )
            ),
            const SizedBox( height: 10 ),
            Bounce(
              child: Row(
                children: const [
                  Expanded(
                      child: Text("Jesús Marfil | Software developer", style: AppTheme.titleMobile, textAlign: TextAlign.center, )
                  ),
                ],
              ),
            ),
            const Text("Autodidacta, me apasionan las nuevas tecnologías, Android, desarrollo de apps, smartphones, wearables.",style: AppTheme.subtitleMobile, textAlign: TextAlign.center,),
            const SizedBox( height: 20 ),
            const SocialNetworks(),
            const SizedBox( height: 20 ),
            const Text("Habilidades", style: AppTheme.titleSectionMobile,),
            const Text("Fullstack developer | Backend, Frontend, movil multiplataforma", style: TextStyle( fontSize: 14, color: Colors.white ),),
            Container(
              margin: const EdgeInsets.only( bottom: 0, top: 10),
              constraints: const BoxConstraints( maxHeight: 130 ),
              child: AlignedGridView.count(
                crossAxisCount: 4,
                itemCount: listSkills.length,
                itemBuilder: (BuildContext context, int index){
                  return  CardSkill( skilll: listSkills[index] );
                },
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),
            Text(dashboardProvider.textSkills, style: const TextStyle( fontSize: 14, color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
