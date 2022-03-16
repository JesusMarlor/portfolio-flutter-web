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
        borderRadius: BorderRadius.all(Radius.circular(20)),
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
              Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Text(experience.company, style: TextStyle( fontSize: isDesktop?25:16, fontWeight: FontWeight.bold, color: Colors.white ), textAlign: TextAlign.center)),
                    SizedBox( height: isDesktop?20:10 ),
                    Container(
                      decoration: BoxDecoration(
                        color:   Theme.of(context).highlightColor, //Theme.of(context).primaryColor,//
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(1.1, 1.1),
                              blurRadius: 2.0),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(experience.imageAsset, height: isDesktop?120:65,),
                      ),
                    ),
                    SizedBox( height: isDesktop?20: 10 ),
                    Text(experience.title, style: TextStyle( fontSize: isDesktop?22:13 ),),
                    Expanded(child: Text(experience.description, style: TextStyle( fontSize: isDesktop?18:10 ), textAlign: TextAlign.center,)),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
