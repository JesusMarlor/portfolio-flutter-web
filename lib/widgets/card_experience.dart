import 'package:flutter/material.dart';
import 'package:portfolio/models/experience.dart';
import 'package:portfolio/utils/responsive.dart';

class CardExperience extends StatelessWidget {

  final Experience experience;
  const CardExperience({Key key, this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color:   Theme.of(context).highlightColor, //Theme.of(context).primaryColor,//
        borderRadius: BorderRadius.all(Radius.circular(isDesktop?10:5)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      constraints: BoxConstraints( maxHeight: isDesktop?300:160),
      child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: experience.color ?? Colors.blue,
                      child: const SizedBox(),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: Colors.white,
                        child: const SizedBox()
                    ),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(experience.company, style: TextStyle( fontSize: isDesktop?25:16, fontWeight: FontWeight.bold, color: Colors.white ),),
                  SizedBox( height: isDesktop?20:10 ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(experience.imageAsset, height: isDesktop?120:80,),
                  ),
                  SizedBox( height: isDesktop?20:10 ),
                  Text(experience.title, style: TextStyle( fontSize: isDesktop?22:13 ),),
                  Text(experience.description, style: TextStyle( fontSize: isDesktop?18:10 ),),
                ],
              )
            ],
          )
      ),
    );
  }
}
