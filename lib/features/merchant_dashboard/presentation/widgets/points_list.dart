import 'package:cherubini/exports.dart';
import 'package:cherubini/core/widgets/shared_points_item.dart';
import 'package:flutter/material.dart';
import '../../../tech_dashborad/data/repositories/tech_dashboard_static.dart';
import '../../data/statics/statics.dart';

class PointsList extends StatelessWidget {
  const PointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(DashboardStatics.pointsList.length, (index) {
        final model = DashboardStatics.pointsList[index];
        return SharedPointsItem(model: model);
      }),
    );
  }
}
