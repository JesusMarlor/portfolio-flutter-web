import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/card_project.dart';
import 'package:provider/provider.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox( height: 20,),
          const Text("Proyectos 📁", style: AppTheme.titleSection,),
          const SizedBox( height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/laptop.png", width:  MediaQuery.of(context).size.height * .18,),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/phone.png",width:  MediaQuery.of(context).size.height * .18),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/smart-watch.png",width:  MediaQuery.of(context).size.height * .18,),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Wrap(
                    children: List.generate(dashboardProvider.listProjects.length, (index) => InkWell(
                        onTap: ()=> Utils().openUrl(dashboardProvider.listProjects[index].url),
                        child: Container(
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.height * .25,
                            height: MediaQuery.of(context).size.height * .32,
                            child: CardProject( project: dashboardProvider.listProjects[index] ))
                    )),
                  ),
                ),
              ],
            )
          ),
        ],
      )
    );
  }
}
