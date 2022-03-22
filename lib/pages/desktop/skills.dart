import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/card_skill.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {

  const Skills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: SlideInLeft(
              child:  Lottie.asset('assets/lottie/skills.json')
            ),
          ),
          Expanded(
            flex: 4,
            child: SlideInRight(
              child: Column(
                children: [
                  const SizedBox( height: 20,),
                  const Text("Habilidades", style: AppTheme.titleSection,),
                  const Text("Fullstack developer | Backend, Frontend, movil multiplataforma", style: TextStyle( fontSize: 25, color: Colors.white),),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: listSkills.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, index){
                        return CardSkill( skilll: listSkills[index] );
                      },
                    ),
                  ),
                  Text(dashboardProvider.textSkills, style: TextStyle( fontSize: 22, color: Colors.white),)
                ],
              )
            ),
          ),
          const Expanded(
            flex: 1,
            child: SizedBox(),
          )
        ],
      ),
    );
  }
}
