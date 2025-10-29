import '../../../../exports.dart';
import '../../../../core/widgets/shared_points_item.dart';
import '../../data/statics/tech_dashboard_static.dart';

class TechPointsList extends StatelessWidget {
  const TechPointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(TechDashboardStatic.techPointsList.length, (
        index,
      ) {
        final model = TechDashboardStatic.techPointsList[index];
        return SharedPointsItem(model: model);
      }),
    );
    ;
  }
}
