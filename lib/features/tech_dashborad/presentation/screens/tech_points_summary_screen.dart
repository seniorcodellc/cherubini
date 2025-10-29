import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/entitlements_list.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_points_register.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/summary_points_card.dart';

import '../../../../exports.dart';

class TechPointsSummaryScreen extends StatelessWidget {
  const TechPointsSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      appBar: CustomAppbar(title: "ملخص النقاط"),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SummaryPointsCard(),
                16.vs,
                Padding(
                  padding: getPadding(horizontal: 16.w),
                  child: Text(
                    "الاستحقاقات ",
                    style: getBoldTextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                16.vs,
                // ReplacingOptionsList(),
                EntitlementsList(),
                24.vs,
                Padding(
                  padding: getPadding(horizontal: 16.w),
                  child: Text(
                    "سجل النقاط",
                    style: getBoldTextStyle(
                      fontSize: 16,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                16.vs,
                PointsRegister(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
