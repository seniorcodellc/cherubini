import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/dashboard_header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  static final route = "dashboard_screen";

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark,),);
    return Scaffold(
      backgroundColor: Color(0xffF5F7FA),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              children: [
                const DashboardHeader(),
                Padding(
                  padding: const EdgeInsets.only(top: 140),
                  child: const DashboardBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
