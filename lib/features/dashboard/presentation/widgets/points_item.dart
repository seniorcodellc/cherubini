import 'package:cherubini/exports.dart';
import '../../data/models/points_model.dart';
class PointsItem extends StatelessWidget {
  const PointsItem({super.key, required this.model});
  final PointsModel model ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getPadding(horizontal: 16.0.w,vertical: 10.0.h),
      decoration: BoxDecoration(
        color:AppColors.bgColor,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.5),
            spreadRadius: 2,
            blurRadius: 6,
          ),
        ],
      ),
      child: Padding(
        padding: getPadding(vertical: 12.0.h, horizontal: 16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: AppColors.mutedBlue,
                borderRadius: BorderRadius.circular(16.0.r),
              ),
              child: Padding(
                padding: getPadding(all: 12.0),
                child: CustomSVGImage(asset:model.iconPath),
              ),
            ),
            40.hs,
            Column(
              children: [
                Text(
                  model.title,
                  style: getRegularTextStyle(
                    fontSize: 14.sp,
                    color:AppColors.subTitleColor,
                  ),
                ),
                8.hs,
                Text(
                  model.number,
                  style: getRegularTextStyle(
                    fontSize: 18.sp,
                    color: AppColors.secondaryColor,
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
