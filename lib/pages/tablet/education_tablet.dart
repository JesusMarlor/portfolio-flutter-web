import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/dashboard_provider.dart';
import '../../theme/AppTheme.dart';
import '../../widgets/school_timeline.dart';

class EducationTablet extends StatelessWidget {
  const EducationTablet({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox( height: 20,),
          const Text("Educación 💻", style: AppTheme.titleSectionTablet,),
          SchoolTimeline( listSchools: dashboardProvider.listSchools ),
        ],
      ),
    );
  }
}
