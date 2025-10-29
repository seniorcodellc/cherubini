import '../../../../exports.dart';
import '../../../../core/widgets/shared_points_item.dart';
import '../../data/repositories/tech_dashboard_statics.dart';

class TechPointsList extends StatelessWidget {
  const TechPointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(TechDashboardStatics.techPointsList.length, (
        index,
      ) {
        final model = TechDashboardStatics.techPointsList[index];
        return SharedPointsItem(model: model);
      }),
    );
    ;
  }
}
