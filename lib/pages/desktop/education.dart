import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/provider/dashboard_provider.dart';
import 'package:portfolio/theme/AppTheme.dart';
import 'package:portfolio/widgets/school_timeline.dart';
import 'package:provider/provider.dart';

class Education extends StatelessWidget {
  const Education({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dashboardProvider = Provider.of<DashboardProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox( height: 20,),
          const Text("Educación 💻", style: AppTheme.titleSection,),
          SchoolTimeline( listSchools: dashboardProvider.listSchools ),
        ],
      ),
    );
  }
}
