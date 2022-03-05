import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/theme/AppTheme.dart';

class CardProject extends StatelessWidget {

  final Project project;
  const CardProject({Key key, this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:   Theme.of(context).highlightColor, //Theme.of(context).primaryColor,//
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      constraints: const BoxConstraints( maxHeight: 300),
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
                  Text(project.company, style: const TextStyle( fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white ),),
                  const SizedBox( height: 20 ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(project.imageAsset, height: 120,),
                  ),
                  const SizedBox( height: 20 ),
                  Text(project.title, style: TextStyle( fontSize: 22 ),),
                  Text(project.description, style: TextStyle( fontSize: 18 ),),
                ],
              )
            ],
          )
      ),
    );
  }
}
