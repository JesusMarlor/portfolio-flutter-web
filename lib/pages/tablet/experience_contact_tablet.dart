import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

import '../../provider/dashboard_provider.dart';
import '../../theme/AppTheme.dart';
import '../../utils/utils.dart';
import '../../widgets/card_experience.dart';
import '../../widgets/social_networks.dart';

class ExperienceContactTablet extends StatelessWidget {
  const ExperienceContactTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);

    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox( height: 20,),
            const Text("Experiencia", style: AppTheme.titleSectionTablet,),
            const SizedBox( height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/dev1.png", width:  MediaQuery.of(context).size.height * .10,),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/dev3.png",width:  MediaQuery.of(context).size.height * .10),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/dev2.png",width:  MediaQuery.of(context).size.height * .10,),
                    ],
                  ),
                ),
                Expanded(
                    flex: 7,
                    child: Wrap(
                      children: List.generate(dashboardProvider.listExperience.length, (index) => InkWell(
                          onTap: ()=> Utils().openUrl(dashboardProvider.listExperience[index].url),
                          child: Container(
                              padding: const EdgeInsets.all(10),
                              width: MediaQuery.of(context).size.height * .20,
                              height: MediaQuery.of(context).size.height * .20,
                              child: CardExperience( experience: dashboardProvider.listExperience[index] ))
                      )),
                    )/* AlignedGridView.count(
                    crossAxisCount: isDesktop?4:2,
                    itemCount: dashboardProvider.listExperience.length,
                    itemBuilder: (BuildContext context, int index){
                      return  InkWell(
                          onTap: ()=> Utils().openUrl(dashboardProvider.listExperience[index].url),
                          child: CardExperience( experience: dashboardProvider.listExperience[index] )
                      );
                    },
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),*/
                ),
              ],
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children:  [
                    const Text("Contactame 💻", style: AppTheme.titleTablet,),
                    const SizedBox( height: 10 ),
                    InkWell(
                      onTap: ()=> Utils().launchPhone("9861070303"),
                      child: const Text("9861070303", style: AppTheme.bodyTablet),
                    ),
                    const SizedBox( height: 10 ),
                    InkWell(
                      onTap:()=> Utils().launchEmail("marfil.su@gmail.com"),
                      child: const Text("marfil.su@gmail.com", style: AppTheme.bodyTablet),
                    ),
                    const SizedBox( height: 10 ),
                    const SocialNetworks(),
                    const Text("© 2022, Jesús Marfil"),
                  ],
                )
            ),
          ],
        )
    );
  }
}
