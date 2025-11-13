import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_quick_procedures_item.dart';

import '../../../../exports.dart';

class TechQuickProcedures extends StatelessWidget {
  const TechQuickProcedures({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TechQuickProceduresItem(
          asset: AppAssets.scan,
          text: AppStrings.scanCode,
          onTap: () {
            Routes.scanRoute.moveTo();
          },
        ),
        TechQuickProceduresItem(
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
