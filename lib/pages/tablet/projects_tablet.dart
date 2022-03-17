import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../provider/dashboard_provider.dart';
import '../../theme/AppTheme.dart';
import '../../utils/utils.dart';
import '../../widgets/card_project.dart';

class ProjectsTablet extends StatelessWidget {
  const ProjectsTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox( height: 20,),
            const Text("Proyectos 📁", style: AppTheme.titleSectionTablet,),
            const SizedBox( height: 20,),
            Expanded(
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
            )
          ],
        )
    );
  }
}
