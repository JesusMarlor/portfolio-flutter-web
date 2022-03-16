import 'package:flutter/material.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/pages/mobile/about_me_mobile.dart';
import 'package:portfolio/pages/mobile/experience_contacto_mobile.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/widgets/footer_mobile.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:provider/provider.dart';

import '../dashboard/about_me.dart';
import 'education_mobile.dart';

class Dashboardmobile extends StatelessWidget {
  const Dashboardmobile({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<DashboardProvider>(
        builder: ( context, provider, _ ){
            return Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HeaderMobile(),
                  const SizedBox( height: 10 ),
                  Expanded(
                    child: OpscrollWeb(
                        isFloatingButtonActive: true,
                        isTouchScrollingActive: true,
                        pageController: provider.pageController,
                        scrollingAnimationOptions: ScrollingAnimationOptions.Fading,
                        scrollSpeed: const Duration(milliseconds: 300),
                        onePageChildren: const[
                          AboutMeMobile(),
                          EducationMobile(),
                          ExperienceContactMobile()
                        ]
                    ),
                  ),
                  const FooterMobile()
                ],
              ),
            );
          }
        )
    );
  }

}
