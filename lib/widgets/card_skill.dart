import 'package:flutter/material.dart';
import 'package:portfolio/models/skill.dart';

class CardSkill extends StatelessWidget {

  final Skill skilll;
  const CardSkill({Key key, this.skilll}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      constraints: const BoxConstraints( maxHeight: 150 ),
      child: Column(
        children: [
          Image.asset(skilll.icon, height: 60,),
          const SizedBox( height: 5,),
          Text(skilll.name ?? "-")
        ],
      ),
    );
  }
}
