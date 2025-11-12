import 'package:cherubini/exports.dart';

class DetailsPopupProfile extends StatelessWidget {
  const DetailsPopupProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSVGImage(
          asset: AppAssets.activeProfile,
          height: 55.h,
          width: 55.w,
        ),
        12.hs,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.techName,
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: AppColors.primaryColor,
              ),
            ),
            8.vs,
            Container(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20.0.r),
                border: Border.all(color: AppColors.accentColor, width: 1.5),
              ),
              child: Padding(
                padding: getPadding(
                  vertical: 4.0.h,
                  horizontal: 14.0.w,
                ),
                child: Text(
                  AppStrings.techDescription,
                  style: getRegularTextStyle(
                    fontSize: 12.sp,
                    color: AppColors.accentColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
