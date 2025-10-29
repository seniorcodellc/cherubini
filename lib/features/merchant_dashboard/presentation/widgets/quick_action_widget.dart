import 'package:cherubini/exports.dart';
import '../../data/statics/statics.dart';
class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155.h, // Fixed height to contain the items
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: getPadding(horizontal: 8.w), // Outer padding
          itemCount: DashboardStatics.actionsList.length,
          separatorBuilder: (context, index) => SizedBox(width:10.w),
          itemBuilder: (context, index) {
            final model = DashboardStatics.actionsList[index];
        return Container(
          height: 135.h,
          decoration: BoxDecoration(
            color:AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding:getPadding(horizontal: 10.0.w, vertical: 10.0.h),
            child: Column(
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0.r),
                    gradient: LinearGradient(
                      colors: [Color(0xff0F50AA), Color(0xff3495E9)],
                      begin: AlignmentGeometry.bottomLeft,
                      end: AlignmentGeometry.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: getPadding(all: 12.0),
                    child: CustomSVGImage(asset:model.iconPath),
                  ),
                ),
                10.vs,
                Text(
                  model.title,
                  style:getRegularTextStyle(fontSize: 12.sp,color: AppColors.primaryColor),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
