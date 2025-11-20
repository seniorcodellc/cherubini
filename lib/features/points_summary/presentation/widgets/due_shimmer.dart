import 'package:cherubini/core/widgets/shimmer_widget.dart';

import '../../../../exports.dart';

class DueShimmer extends StatelessWidget {
  const DueShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: 16.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(color: Colors.black.withValues(alpha: 0.1), spreadRadius: 2.r, blurRadius: 6.r, offset: Offset(0, 2.h)),
            BoxShadow(color: Colors.black.withValues(alpha: 0.1), spreadRadius: 0.r, blurRadius: 2.r, offset: Offset(0, 1.h)),
          ],
        ),
        child: Padding(
          padding: getPadding(horizontal: 16.w),
          child: Column(
            children: [
              Padding(
                padding: getPadding(vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomShimmer.fromRectangle(width: 56.w,height: 56.h,borderRadius: BorderRadius.circular(16.r),),
                        16.hs,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomShimmer.fromRectangle(height: 12.h,width: 50.w,borderRadius: BorderRadius.circular(20.r),),
                            8.vs,
                            CustomShimmer.fromRectangle(height: 15.h,width: 90.w,borderRadius: BorderRadius.circular(20.r),),
                          ],
                        ),
                        Spacer(),
                        CustomShimmer.fromRectangle(width: 100.w,height: 26.h,borderRadius: BorderRadius.circular(20.r),),
                      ],
                    ),
                    16.vs,
                    CustomShimmer.fromRectangle(width: 140.w,height: 30.h,borderRadius: BorderRadius.circular(20.r),),

                  ],
                ),
              ),
              CustomShimmer.fromRectangle(width: 311.w,height: 1.h,borderRadius: BorderRadius.circular(16.r),),
              Padding(
                padding: getPadding(vertical: 16.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomShimmer.fromRectangle(width: 70.w,height: 40.h,borderRadius: BorderRadius.circular(12.r),),
                          10.hs,
                          CustomShimmer.fromRectangle(height: 50,width: 2,),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomShimmer.fromRectangle(width: 70.w,height: 40.h,borderRadius: BorderRadius.circular(12.r),),
                          25.hs,
                          CustomShimmer.fromRectangle(height: 50,width: 2,),
                        ],
                      ),
                    ),
                    CustomShimmer.fromRectangle(width: 70.w,height: 40.h,borderRadius: BorderRadius.circular(12.r),),
                  ],
                ),
              ),
              CustomShimmer.fromRectangle(width: 311.w,height: 1.h,),
              16.vs,
              CustomShimmer.fromRectangle(width: 70.w,height: 40.h,borderRadius: BorderRadius.circular(12.r),),
              16.vs,
            ],
          ),
        ),
      ),
    );
  }
}
