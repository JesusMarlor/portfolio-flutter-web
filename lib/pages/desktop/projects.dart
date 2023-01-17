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
          /*Expanded(
            child: AlignedGridView.count(
              crossAxisCount: 4,
              itemCount: dashboardProvider.listProjects.length,
              itemBuilder: (BuildContext context, int index){
                return  InkWell(
                  onTap: ()=> Utils().openUrl(dashboardProvider.listProjects[index].url),
                    child: CardProject( project: dashboardProvider.listProjects[index] )
                );
              },
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ),
          )*/
        ],
      )
    );
  }
}
