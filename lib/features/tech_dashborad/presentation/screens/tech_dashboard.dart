import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_dashboard_body.dart';
import '../../../../exports.dart';
import '../../../../core/widgets/shared_dashboard_header.dart';
import '../../../authentication/presentation/managers/auth_cubit.dart';

class TechDashboard extends StatelessWidget {
  const TechDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              alignment: AlignmentGeometry.topCenter,
              children: [
                SharedDashboardHeader(
                  onTap: () {
                    Routes.settings.moveTo();
                  },
                  name: "${AppStrings.welcome.trans} ${context.read<AuthCubit>().user?.name.validate}",
                  subTitle: AppStrings.techDescription,
                ),
                Padding(
                  padding: getPadding(bottom: 30.h),
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
