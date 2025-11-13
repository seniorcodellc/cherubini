import 'package:cherubini/core/history/data/models/history_response_model.dart';
import 'package:cherubini/exports.dart';
import '../../data/models/scan_model.dart';
class LastScanItem extends StatelessWidget {
  const LastScanItem({super.key, required this.history});
  final HistoryModel history;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(horizontal: 16.0.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
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
                      history.detail![0].productName.toString(),
                      style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.primaryColor),
                      // textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      DateFormat('dd/MM/yyyy').format(DateTime.parse(history.date!)).toString(),
                      style: getRegularTextStyle(fontSize: 16.sp,color:AppColors.subTitleColor ),
                      //textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  '${history.points} نقطه',
                  //textDirection: TextDirection.rtl,
                  style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.accentColor),
                ),
              ],
            ),
            Padding(
              padding:getPadding(top: 40.0.h,bottom: 14.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'الفنى خالد سعيد',
                    style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.subTitleColor),
                  ),
                  Text(
                    '5 منتجات',
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