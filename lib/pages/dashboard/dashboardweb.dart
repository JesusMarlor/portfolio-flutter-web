import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/pages/dashboard/skills.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/widgets/header_web.dart';
import 'package:provider/provider.dart';

import 'about_me.dart';

class Dashboardweb extends StatelessWidget {
  const Dashboardweb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<DashboardProvider>(
          builder: ( context, provider, _ ){
            return Container(
              child: Column(
                children: [
                  const HeaderWeb(),
                  const SizedBox( height: 10 ),
                  Expanded(
                    child: Row(
                      children: [
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                        Expanded(
                          flex: 8,
                          child: OpscrollWeb(
                              isFloatingButtonActive: true,
                              isTouchScrollingActive: true,
                              pageController: PageController(),//provider.pageController,
                              scrollingAnimationOptions: ScrollingAnimationOptions.Fading,
                              scrollSpeed: const Duration(milliseconds: 300),
                              onePageChildren:[
                                AboutMe(),
                                Skills()
                              ]
                          ),
                        ),
                        const Expanded(
                          flex: 1,
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  )
                ],
              )
            );
          }
        )
    );
  }
}
