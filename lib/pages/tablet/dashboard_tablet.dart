import 'package:flutter/material.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/pages/tablet/projects_tablet.dart';
import 'package:portfolio/pages/tablet/skills_tablet.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/widgets/footer_web.dart';
import 'package:portfolio/widgets/header_web.dart';
import 'package:provider/provider.dart';

import 'aboutme_tablet.dart';
import 'education_tablet.dart';
import 'experience_contact_tablet.dart';

class DashboardTablet extends StatelessWidget {

  const DashboardTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<DashboardProvider>(
            builder: ( context, provider, _ ){
              //provider.initPages();
              return Container(
                  child: Column(
                    children: [
                      const HeaderWeb(),
                      const SizedBox( height: 10 ),
                      Expanded(
                        child: OpscrollWeb(
                            isFloatingButtonActive: true,
                            isTouchScrollingActive: true,
                            pageController: provider.pageController,
                            scrollingAnimationOptions: ScrollingAnimationOptions.Fading,
                            scrollSpeed: const Duration(milliseconds: 300),
                            onePageChildren: const[
                              AboutMeTablet(),
                              SkillsTablet(),
                              EducationTablet(),
                              ProjectsTablet(),
                              ExperienceContactTablet()
                            ]
                        ),
                      ),
                      const FooterWeb(),
                    ],
                  )
              );
            }
        )
    );
  }
}
