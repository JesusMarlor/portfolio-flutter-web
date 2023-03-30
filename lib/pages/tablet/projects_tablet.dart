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
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/laptop.png", width:  MediaQuery.of(context).size.height * .13,),
                      SizedBox(height: MediaQuery.of(context).size.height * .03,),
                      Image.asset("assets/images/phone.png",width:  MediaQuery.of(context).size.height * .13),
                      SizedBox(height: MediaQuery.of(context).size.height * .03,),
                      Image.asset("assets/images/smart-watch.png",width:  MediaQuery.of(context).size.height * .13,),
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
                            width: MediaQuery.of(context).size.height * .20,
                            height: MediaQuery.of(context).size.height * .20,
                            child: CardProject( project: dashboardProvider.listProjects[index] ))
                    )),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
