import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/card_project.dart';
import 'package:portfolio/widgets/school_timeline.dart';
import 'package:provider/provider.dart';

class EducationMobile extends StatelessWidget {
  const EducationMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox( height: 10,),
          const Text("Educación 💻", style: AppTheme.titleSection,),
          SchoolTimeline( listSchools: dashboardProvider.listSchools ),
          const SizedBox( height: 10,),
          const Text("Proyectos 📁", style: AppTheme.titleSection,),
          const SizedBox( height: 10,),
          Expanded(
            child: AlignedGridView.count(
              crossAxisCount:isDesktop?4:3,
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
      ),
    );
  }
}
