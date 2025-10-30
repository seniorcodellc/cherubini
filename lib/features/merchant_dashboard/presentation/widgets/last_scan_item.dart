import 'package:cherubini/exports.dart';
import '../../data/models/scan_model.dart';
class LastScanItem extends StatelessWidget {
  const LastScanItem({super.key, required this.model});
  final ScanModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(horizontal: 16.0.w,vertical: 8.0.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            spreadRadius: 2,
            blurRadius: 6,
          ),
        ],
      ),
      child: Padding(
        padding:getPadding(horizontal: 16.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffE3F2FD),
                    borderRadius: BorderRadius.circular(16.0.r),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: CustomSVGImage(asset: AppAssets.scanFilled),
                ),
                12.hs,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      model.title, style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.primaryColor),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      model.date, style: getRegularTextStyle(fontSize: 16.sp,color:AppColors.subTitleColor ),
                    ),
                  ],
                ),
                const Spacer(),
                Text('${model.points} نقطه', style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.accentColor),),
              ],
            ),
            Padding(
              padding:getPadding(top: 40.0.h,bottom: 14.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الفني: ${model.tech}',
                    style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.subTitleColor),
                  ),
                  Text(
                    '${model.number}  منتجات ',
                    textDirection: TextDirection.rtl,
                    style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.subTitleColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}