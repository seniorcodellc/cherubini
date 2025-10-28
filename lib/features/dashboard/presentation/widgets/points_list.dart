
import 'package:cherubini/features/dashboard/presentation/widgets/points_item.dart';
import 'package:flutter/material.dart';

import '../../data/statics/statics.dart';
class PointsList extends StatelessWidget {
  const PointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(DashboardStatics.pointsList.length, (index) {
        final model = DashboardStatics.pointsList[index];
        return PointsItem(model: model);
      }),
    );
  }
}
