import 'package:cherubini/exports.dart';

import '../../../merchant_dashboard/data/models/scan_model.dart';

class TechLastScanItem extends StatelessWidget {
  const TechLastScanItem({super.key, required this.model});
  final ScanModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(horizontal: 16.0.w, vertical: 8.0.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2.r,
            blurRadius: 6.r,
            offset: Offset(0, 2.h),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 0.r,
            blurRadius: 2.r,
            offset: Offset(0, 1.h),
          ),
        ],
      ),
      child: Padding(
        padding: getPadding(horizontal: 16.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 40.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: AppColors.mutedBlue,
                borderRadius: BorderRadius.circular(10.0.r),
              ),
              child: Padding(
                padding: getPadding(horizontal: 8, vertical: 8),
                child: CustomSVGImage(asset: AppAssets.scanFilled),
              ),
            ),
            16.hs,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  model.title,
                  style: getRegularTextStyle(
                    fontSize: 16.sp,
                    color: AppColors.primaryColor,
                  ),
                ),
                Text(
                  model.date,
                  style: getRegularTextStyle(
                    fontSize: 16.sp,
                    color: AppColors.grayHint,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              children: [
                Text(
                  '${model.points} نقطه',
                  style: getRegularTextStyle(
                    fontSize: 14.sp,
                    color: AppColors.accentColor,
                  ),
                ),
                Text(
                  '${model.points} 5 منتجات',
                  style: getRegularTextStyle(
                    fontSize: 14.sp,
                    color: AppColors.subTitleColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
