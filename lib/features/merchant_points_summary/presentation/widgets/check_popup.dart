import 'package:cherubini/exports.dart';

class CheckPopup extends StatelessWidget {
  const CheckPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(vertical: 16.0.h,horizontal: 16.0.w),
      child: Column(
        children: [
          Row(
            children: [
              Directionality(textDirection: TextDirection.ltr,
                  child: CustomSVGImage(asset: AppAssets.checkFilled)),
              6.hs,
              Text(AppStrings.paid,style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.grayHint),),
            ],
          ),
          12.vs,
          Row(
            children: [
              CustomSVGImage(asset: AppAssets.checkEmpty),
              6.hs,
              Text(AppStrings.notPaid,style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.grayHint),),
            ],
          ),
        ],
      ),
    )
    ;
  }
}
