import 'package:cherubini/core/widgets/custom_divider.dart';
import 'package:cherubini/features/tech_dashborad/data/models/entitlements_model.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/scan_blue_circle.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_custom_divider_vertical.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_done_or_not_container.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_points_details_column.dart';

import '../../../../exports.dart';

class EntitlementsListItem extends StatelessWidget {
  const EntitlementsListItem({super.key, required this.model});
  final EntitlementsModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: 16.h),
      child: Container(
        width: 343.w,
        height: 178.h,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ScanBlueCircle(),
                    16.hs,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.title,
                          style: getRegularTextStyle(
                            fontSize: 16,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text(
                          model.date,
                          style: getRegularTextStyle(
                            fontSize: 20,
                            color: AppColors.grayHint,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    model.isDone == true
                        ? SharedDoneOrNotContainer(
                            text: "تم الصرف",
                            textColor: AppColors.green,
                            bgColor: AppColors.mutedGreen,
                            borderColor: AppColors.green,
                          )
                        : SharedDoneOrNotContainer(
                            text: "لم يتم الصرف",
                            textColor: AppColors.orange2,
                            bgColor: AppColors.mutedOrange,
                            borderColor: AppColors.orange2,
                          ),
                  ],
                ),
              ),
              CustomDivider(width: 311, color: AppColors.grayHint, height: 1),
              Padding(
                padding: getPadding(vertical: 16.h),
                child: Row(
                  children: [
                    SharedPointsDetailsColumn(
                      pointsType: 'مجموع النقاط',
                      pointsNum: model.totalPoints,
                    ),
                    SharedCustomDividerVertical(),
                    SharedPointsDetailsColumn(
                      pointsType: 'نقاط  المستبدلة',
                      pointsNum: model.replacedPoints,
                    ),
                    SharedCustomDividerVertical(),
                    SharedPointsDetailsColumn(
                      pointsType: 'قيمة النقاط',
                      pointsNum: model.pointsValue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
