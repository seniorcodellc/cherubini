import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_background.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/last_scan_list.dart';
import '../../../../core/widgets/shared_dashboard_header.dart';

class MerchantDashboardScreen extends StatelessWidget {
  const MerchantDashboardScreen({super.key});
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
                  padding: getPadding(top: 140),
                  child: const DashboardBody(),
                ),
              ],
            ),
          ),
          SliverFillRemaining(child: LastScanList(),
              )
        ],
      ),
    );
  }
}
