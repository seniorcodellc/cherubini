import 'package:cherubini/core/widgets/custom_bottom_nav_bar.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_quick_procedures_item.dart';

import '../../../../exports.dart';

class TechQuickProcedures extends StatelessWidget {
  const TechQuickProcedures({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SharedQuickProceduresItem(
          asset: AppAssets.scan,
          text: AppStrings.scanCode,
          onTap: () {
            Routes.scanRoute.moveTo();
          },
        ),
        SharedQuickProceduresItem(
          asset: AppAssets.loyaltyFilled,
          text: AppStrings.pointsAr,
          onTap: () {
            Routes.techPointsSummary.moveTo();
          },
        ),
      ],
    );
  }
}
