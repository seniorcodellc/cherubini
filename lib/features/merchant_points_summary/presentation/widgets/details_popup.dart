import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_points_summary/presentation/widgets/popup_buttons.dart';
import '../../../../core/widgets/custom_divider.dart';
import '../../../tech_dashborad/data/models/entitlements_model.dart';
import '../../../tech_dashborad/presentation/widgets/shared_custom_divider_vertical.dart';
import '../../../tech_dashborad/presentation/widgets/shared_points_details_column.dart';
import 'check_popup.dart';
import 'details_popup_profile.dart';

class DetailsPopup extends StatelessWidget {
  const DetailsPopup({super.key, required this.model});
  final EntitlementsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r)
      ),
      child: Padding(
        padding: getPadding(vertical: 22.0.h,horizontal: 16.0.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(AppStrings.techBenefitsDetails,style: getRegularTextStyle(fontSize: 22.sp,color: AppColors.primaryColor),),
            20.vs,
            DetailsPopupProfile(),
            20.vs,
            CustomDivider(width: double.infinity, color: AppColors.grayHint, height: 0.5),
            Padding(
              padding: getPadding(vertical: 16.h),
              child: Row(
                children: [
                  SharedPointsDetailsColumn(
                    pointsType: AppStrings.totalPoints,
                    pointsNum: model.totalPoints,
                  ),
                  3.hs,
                  SharedCustomDividerVertical(),
                  3.hs,
                  SharedPointsDetailsColumn(
                    pointsType: AppStrings.replacedPoints,
                    pointsNum: model.replacedPoints,
                  ),
                  3.hs,
                  SharedCustomDividerVertical(),
                  3.hs,
                  SharedPointsDetailsColumn(
                    pointsType: AppStrings.pointsValue,
                    pointsNum: model.pointsValue,
                  ),
                ],
              ),
            ),
            CustomDivider(width: double.infinity, color: AppColors.grayHint, height: 0.5),
            CheckPopup(),
            PopupButtons(),
          ],
        ),
      ),
    );
  }
}
