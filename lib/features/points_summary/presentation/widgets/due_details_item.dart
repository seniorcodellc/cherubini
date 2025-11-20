import 'package:cherubini/core/widgets/custom_divider.dart';
import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/core/widgets/second_shared_custom_button.dart';
import 'package:cherubini/features/points_summary/presentation/widgets/shared_points_details_column.dart';

import '../../../../config/widgets/status_widget.dart';
import '../../../../exports.dart';
import '../../data/models/cash_reward_response_model.dart';
import '../managers/due_pay_cubit.dart';

class DueDetailsItem extends StatefulWidget {
  const DueDetailsItem({required this.model, super.key});
  final DueDetailsModel model;

  @override
  State<DueDetailsItem> createState() => _DueDetailsItemState();
}

class _DueDetailsItemState extends State<DueDetailsItem> {
  @override
  void initState() {
    super.initState();
  }

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
                child: Row(
                  children: [
                    CustomSVGImage(
                      asset: widget.model.isCollected.orFalse
                          ? AppAssets.activeProfile
                          : AppAssets.waitingProfile,
                      height: 60.h,
                      width: 60.w,
                    ),
                    16.hs,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.name.validate,
                          style: getRegularTextStyle(
                            fontSize: 16.sp,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        5.vs,
                        StatusWidget(
                          text: widget.model.isCollected.isTrue
                              ? AppStrings.collected.trans
                              : AppStrings.notCollected.trans,
                          isActive: widget.model.isCollected.orFalse,
                        ),
                      ],
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
                              pointsType: AppStrings.totalPoints.trans,
                              pointsNum: widget.model.totalPointsBalance
                                  .toString(),
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
                              pointsType: AppStrings.replacedPoints.trans,
                              pointsNum: widget.model.totalPointsDue.toString(),
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
                        pointsType: AppStrings.pointsDeducted.trans,
                        pointsNum: widget.model.totalPointsDeducted.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              HLine(),

              SharedPointsDetailsColumn(
                pointsType: AppStrings.pointsValue.trans,
                pointsNum: widget.model.cashReward.toString(),
              ),
              16.vs,
              widget.model.isCollected.isFalse
                  ? Padding(
                      padding: getPadding(bottom: 16.h),
                      child: CustomButton(
                        borderColor: widget.model.isToPay.isFalse
                            ? AppColors.primaryColor
                            : null,
                        textColor: widget.model.isToPay.isFalse
                            ? AppColors.primaryColor
                            : AppColors.white,
                        backgroundColor: widget.model.isToPay.isFalse
                            ? AppColors.white
                            : AppColors.gradientColorEnd,
                        text: AppStrings.pay.trans,
                        onPressed: () {
                          widget.model.isToPay = !widget.model.isToPay.orFalse;
                          context.read<DuePayCubit>().payToTechnician(
                            widget.model.technicianId!,
                          );
                          setState(() {});
                        },
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
