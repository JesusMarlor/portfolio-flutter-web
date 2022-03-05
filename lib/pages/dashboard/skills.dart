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
        children: [
          Expanded(
            flex: 5,
            child: SlideInLeft(
              child:  Lottie.asset('assets/lottie/skills.json')
            ),
          ),
          Expanded(
            flex: 5,
            child: SlideInRight(
              child: Column(
                children: [
                  const Text("Habilidades", style: AppTheme.titleSection,),
                  const Text("Fullstack developer | Backend, Frontend, movil multiplataforma", style: TextStyle( fontSize: 25),),
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
                  Text(dashboardProvider.textSkills, style: TextStyle( fontSize: 22),)
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
