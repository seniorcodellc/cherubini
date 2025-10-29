import 'package:cherubini/exports.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0.r),
          bottomRight: Radius.circular(50.0.r),
        ),
        gradient: LinearGradient(
            colors: [AppColors.gradientColorStart,AppColors.gradientColorEnd],
            begin: AlignmentGeometry.topCenter,
            end: AlignmentGeometry.bottomCenter
        )
      ),
      child: Padding(
        padding: getPadding(horizontal: 16.0.w,top: 40.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('مرحباً , أحمد' ,style: getBoldTextStyle(fontSize: 22.sp,color: Colors.white),),
            10.vs,
            Text('شركة الأجهزة المتقدمة' ,style: getRegularTextStyle(fontSize: 14.sp,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
