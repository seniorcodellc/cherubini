import 'package:cherubini/core/widgets/custom_background.dart';
import '../widgets/dashboard_body.dart';
import '../widgets/dashboard_header.dart';
import 'package:cherubini/exports.dart';
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      statusBarColor: AppColors.gradientColorStart ,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              children: [
                const DashboardHeader(),
                Padding(
                  padding: getPadding(top: 140),
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
