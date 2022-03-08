import 'package:flutter/material.dart';
import 'package:portfolio/models/skill.dart';
import 'package:portfolio/utils/responsive.dart';

class CardSkill extends StatelessWidget {

  final Skill skilll;
  const CardSkill({Key key, this.skilll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = !Responsive.isDesktop(context);
    return Container(
      margin: EdgeInsets.all(isMobile ? 3 : 10),
      constraints: BoxConstraints( maxHeight: isMobile ? 90 : 150 ),
      child: Column(
        children: [
          Image.asset(skilll.icon, height: isMobile ? 30 : 70,),
          SizedBox( height: isMobile ? 2 :5,),
          Text(skilll.name ?? "-")
        ],
      ),
    );
  }
}
