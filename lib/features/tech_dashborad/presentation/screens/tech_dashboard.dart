import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_dashboard_body.dart';

import '../../../../core/widgets/custom_background.dart';
import '../../../../exports.dart';
import '../../../../core/widgets/shared_dashboard_header.dart';

class TechDashboard extends StatelessWidget {
  const TechDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      statusBarColor: AppColors.gradientColorStart,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              children: [
                const SharedDashboardHeader(),
                Padding(
                  padding: getPadding(top: 145),
                  child: const TechDashboardBody(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
