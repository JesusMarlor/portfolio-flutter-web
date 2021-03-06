import 'package:flutter/material.dart';
import 'package:opscroll_web/opscroll_web.dart';
import 'package:portfolio/pages/mobile/aboutme_mobile.dart';
import 'package:portfolio/pages/mobile/experience_contacto_mobile.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/widgets/footer_mobile.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:provider/provider.dart';

import '../desktop/aboutme.dart';
import 'education_mobile.dart';

class DashboardMobile extends StatelessWidget {
  const DashboardMobile({Key key}) : super(key: key);


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
                    child: PageView(
                      controller: provider.pageController,
                        scrollDirection : Axis.vertical,
                        children: const [
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
