import 'package:cherubini/core/widgets/custom_divider.dart';
import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/scan_blue_circle.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_custom_divider_vertical.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_done_or_not_container.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_points_details_column.dart';

import '../../../../config/widgets/status_widget.dart';
import '../../../../exports.dart';
import '../../data/models/cash_reward_response_model.dart';

class DueItem extends StatelessWidget {
  const DueItem({super.key, required this.model});
  final CashRewardModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 2.r,
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 0.r,
              blurRadius: 2.r,
              offset: Offset(0, 1.h),
            ),
          ],
        ),
        child: Padding(
          padding: getPadding(horizontal: 16.w),
          child: Column(
            children: [
              Padding(
                padding: getPadding(vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ScanBlueCircle(),
                        16.hs,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              model.id.toString(),
                              style: getRegularTextStyle(
                                fontSize: 16.sp,
                                color: AppColors.primaryColor,
                              ),
                            ),
                            Text(
                              DateFormat('dd/MM/yyyy')
                                  .format(
                                    DateTime.parse(model.calculatingDate!),
                                  )
                                  .toString(),
                              style: getRegularTextStyle(
                                fontSize: 16.sp,
                                color: AppColors.grayHint,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        SharedDoneOrNotContainer(
                          text: 'عرض التفاصيل',
                          textColor: AppColors.primaryColor,
                          bgColor: AppColors.mutedBlue,
                          borderColor: AppColors.primaryColor,
                        ),
                      ],
                    ),
                    16.vs,
                    StatusWidget(
                      text: model.isCollected.isTrue
                          ? AppStrings.collected
                          : AppStrings.notCollected,
                      isActive: model.isCollected.isTrue,
                    ),
                  ],
                ),
              ),
              CustomDivider(width: 311, color: AppColors.grayHint, height: 1),
              Padding(
                padding: getPadding(vertical: 16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Expanded(
                            child: SharedPointsDetailsColumn(
                              pointsType: AppStrings.totalPoints,
                              pointsNum: model.totalPointsBalance.toString(),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(thickness: 1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: SharedPointsDetailsColumn(
                              pointsType: AppStrings.replacedPoints,
                              pointsNum: model.totalPointsDue.toString(),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            child: VerticalDivider(thickness: 1),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SharedPointsDetailsColumn(
                        pointsType: AppStrings.pointsDeducted,
                        pointsNum: model.totalPointsDeducted.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              CustomDivider(width: 311, color: AppColors.grayHint, height: 1),

              SharedPointsDetailsColumn(
                pointsType: AppStrings.pointsValue,
                pointsNum: model.cashReward.toString(),
              ),
              16.vs,
            ],
          ),
        ),
      ),
    );
  }
}
