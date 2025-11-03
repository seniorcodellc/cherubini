import '../../../../exports.dart';

class SettingsLogOut extends StatelessWidget {
  const SettingsLogOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 62.h,
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
        child: Row(
          children: [
            CustomSVGImage(asset: AppAssets.logOut),
            8.hs,
            Text(
              AppStrings.logOutAr,
              style: getRegularTextStyle(fontSize: 16, color: AppColors.red),
            ),
          ],
        ),
      ),
    );
  }
}
