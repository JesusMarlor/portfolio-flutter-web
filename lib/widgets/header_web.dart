import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/utils/utils.dart';
import 'package:portfolio/widgets/card_menu.dart';
import 'package:provider/provider.dart';

import '../theme/AppTheme.dart';

class HeaderWeb extends StatelessWidget {
  const HeaderWeb({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      decoration: BoxDecoration(
        color:  AppTheme.kBackgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: SlideInLeft(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: const EdgeInsets.symmetric( vertical: 5 ),
                child: Image.asset(
                  'assets/logo_start.png',
                  height: Responsive.isMobile(context) ? 30 : 80,
                  width: Responsive.isMobile(context) ? 80 : 190,
                )
            ),
            Wrap(
              children: [
                InkWell(
                  onTap: ()=> dashboardProvider.changePage(0),
                  child: const CardMenu( title: "Inicio" )
                ),
                InkWell(
                  onTap: ()=> dashboardProvider.changePage(1),
                  child: const CardMenu( title: "Habilidades",)
                ),
                InkWell(
                    onTap: ()=> dashboardProvider.changePage(2),
                    child: const CardMenu( title: "Educacion",)
                ),
                InkWell(
                    onTap: ()=> dashboardProvider.changePage(3),
                    child: const CardMenu( title: "Proyectos",)
                ),
                InkWell(
                    onTap: ()=> dashboardProvider.changePage(4),
                    child: const CardMenu( title: "Experiencia",)
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
