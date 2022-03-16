import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/responsive.dart';

class CardProject extends StatelessWidget {

  final Project project;
  const CardProject({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
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
                      color: project.color ?? Colors.blue,
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
                  Expanded(child: Text(project.company, style: TextStyle( fontSize: isDesktop?25:16, fontWeight: FontWeight.bold, color: Colors.white ), textAlign: TextAlign.center)),
                  SizedBox( height: isDesktop ? 20 : 10 ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(project.imageAsset, height: isDesktop ? 120  : 65 ,),
                  ),
                  SizedBox( height: isDesktop ? 20 : 10 ),
                  Text(project.title, style: TextStyle( fontSize: isDesktop? 22 : 13 ),),
                  Expanded(child: Text(project.description, style: TextStyle( fontSize: isDesktop? 18 : 10 ), textAlign: TextAlign.center,)),
                ],
              )
            ],
          )
      ),
    );
  }
}
