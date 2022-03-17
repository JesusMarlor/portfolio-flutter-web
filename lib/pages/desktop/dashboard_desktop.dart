import 'package:flutter/material.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/pages/desktop/experience_contact.dart';
import 'package:portfolio/pages/desktop/projects.dart';
import 'package:portfolio/pages/desktop/skills.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/widgets/footer_web.dart';
import 'package:portfolio/widgets/header_web.dart';
import 'package:provider/provider.dart';

import 'aboutme.dart';
import 'education.dart';

class DashboardDesktop extends StatelessWidget {

  const DashboardDesktop({Key key}) : super(key: key);

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
                              AboutMe(),
                              Skills(),
                              Education(),
                              Projects(),
                              ExperienceContact()
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
