import 'package:cherubini/exports.dart';
import 'package:dotted_border/dotted_border.dart';

class SharedScanContainer extends StatelessWidget {
  const SharedScanContainer({
    super.key,
    required this.asset,
    required this.title,
  });
  final String asset;

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: getPadding(horizontal: 13.w),
    child: DottedBorder(
      color: AppColors.borderColor3,
      strokeWidth: 3.0.w,
      borderType: BorderType.RRect,
      radius: Radius.circular(20.0.r),
      dashPattern: const [8, 4],
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 286.h,
            decoration: BoxDecoration(
              color: AppColors.mutedBlue,
              borderRadius: BorderRadius.circular(20.0.r),
            ),
          ),
          CustomSVGImage(asset: AppAssets.cameraFrame, fit: BoxFit.none),

          Column(
            children: [
              CustomSVGImage(asset: asset),
              3.vs,
              Text(
                title,
                style: getRegularTextStyle(
                  fontSize: 16,
                  color: AppColors.subTitleColor,
                ),
              ),
            ],
          ),
        ],
      ) /*Container(
        decoration: BoxDecoration(
          color: AppColors.mutedBlue,
          borderRadius: BorderRadius.circular(20.0.r),
        ),
        child: Padding(
          padding: getPadding(
            horizontal: 28.0.w,
            top: 50.0.h,
            bottom: 40.0.h,
          ),
          child: Stack(
            children: [
             // CustomSVGImage(asset: AppAssets.cameraFrame),
              Padding(
                padding: getPadding(start:70.0.w,top: 28.0.h),
                child: Column(
                  children: [
                    Directionality(
                      textDirection: TextDirection.ltr,
                      child: CustomSVGImage(asset: asset),
                    ),
                    8.vs,
                    Text(title,style: getRegularTextStyle(fontSize: 16,color: AppColors.subTitleColor),)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),*/,
    ),

    );
  }
}
