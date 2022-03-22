import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:provider/provider.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color:  AppTheme.kBackgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(1.1, 1.1),
              blurRadius: 10.0),
        ],
      ),
      child: SlideInRight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                //padding: const EdgeInsets.symmetric( vertical: 5 ),
                child: Image.asset(
                  'assets/logo_start.png',
                  height: Responsive.isMobile(context) ? 50 : 90,
                  width: Responsive.isMobile(context) ? 100 : 190,
                )
            ),
            Theme(
              data: ThemeData(
                  backgroundColor: AppTheme.kBackgroundColor,
                  canvasColor: AppTheme.kBackgroundColor,
                  primaryColor: Colors.white,
                  hintColor: Colors.white),
              child: PopupMenuButton(
                color: AppTheme.kBackgroundColor,
                  tooltip: "Menu",
                  onSelected: (int value){
                    dashboardProvider.changePage(value);
                  },
                  child: const Icon( Icons.menu, color: AppTheme.primaryColor, size: 22,),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon( Icons.home, color: Colors.white, size: Responsive.isMobile(context) ? 20 : 40,),
                          const SizedBox( width: 5 ),
                          Text("Inicio", style: TextStyle( color: Colors.white),)
                        ],
                      ),
                      value: 0,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon( Icons.school_outlined, color: Colors.white, size: Responsive.isMobile(context) ? 20 : 40,),
                          const SizedBox( width: 5 ),
                          Text("Educacion", style: TextStyle( color: Colors.white),)
                        ],
                      ),
                      value: 1,
                    ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon( Icons.work_outline, color: Colors.white, size: Responsive.isMobile(context) ? 20 : 40,),
                          const SizedBox( width: 5 ),
                          Text("Experiencia", style: TextStyle( color: Colors.white),)
                        ],
                      ),
                      value: 2,
                    ),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
