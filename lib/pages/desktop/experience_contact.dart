import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/card_experience.dart';
import 'package:portfolio/widgets/social_networks.dart';
import 'package:provider/provider.dart';

class ExperienceContact extends StatelessWidget {
  const ExperienceContact({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    bool isDesktop = Responsive.isDesktop(context);
    return Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox( height: 20,),
            const Text("Experiencia", style: AppTheme.titleSection,),
            const SizedBox( height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/dev1.png", width:  MediaQuery.of(context).size.height * .12,),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/dev3.png",width:  MediaQuery.of(context).size.height * .12),
                      SizedBox(height: MediaQuery.of(context).size.height * .05,),
                      Image.asset("assets/images/dev2.png",width:  MediaQuery.of(context).size.height * .12,),
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
                            width: MediaQuery.of(context).size.height * .30,
                            height: MediaQuery.of(context).size.height * .35,
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
                  const Text("Contactame 💻", style: AppTheme.title,),
                  const SizedBox( height: 10 ),
                   InkWell(
                     onTap:()=> Utils().launchEmail("marfil.su@gmail.com"),
                     child: const Text("marfil.su@gmail.com", style: AppTheme.body),
                   ),
                  const SizedBox( height: 10 ),
                  const SocialNetworks(),
                  const Text("© 2023, Jesús Marfil"),
                ],
              )
            ),
          ],
        )
    );
  }
}
