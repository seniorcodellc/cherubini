import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';

import '../../../tech_dashborad/presentation/widgets/summary_points_card.dart';
import '../../../tech_dashborad/presentation/widgets/tech_points_register.dart';
import '../../data/models/cash_reward_response_model.dart';
import '../managers/dues_cubit.dart';
import '../widgets/due_item.dart';

class DuesScreen extends StatelessWidget {
  const DuesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      showNavBar: true,
      title: AppStrings.pointsSummary,
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SummaryPointsCard(),
                16.vs,
                Padding(
                  padding: getPadding(horizontal: 16.w),
                  child: Text(AppStrings.entitlementsAr, style: getBoldTextStyle(fontSize: 16, color: AppColors.primaryColor)),
                ),
                16.vs,

                // ReplacingOptionsList(),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: GenericListView<DuesCubit, CashRewardModel>(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),

              padding: getPadding(horizontal: 16.w,bottom: 50.h),
              itemWidget: (index, items, item) => DueItem(model: item),
              onItemTapped: (index, item) {
                if (item.detail.isNotNullOrEmpty) {
                  print("lengthhhh ${item.detail?.length}");
                  Routes.dueDetails.moveToWithArgs({"dueDetails": item.detail,"dueId":item.id});
                }
              },
              separatorWidget: 16.vs,
              shimmerWidget: (index) => Container(),
            ),
          ),
        ],
      ),
    );
  }
}
