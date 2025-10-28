import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 195.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.0.r),
          bottomRight: Radius.circular(50.0.r),
        ),
        gradient: LinearGradient(
            colors: [Color(0xff0F50AA),Color(0xff3495E9)],
            begin: AlignmentGeometry.bottomLeft,
            end: AlignmentGeometry.topRight
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 28.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           // Text('مرحباً , أحمد' ,style: GoogleFonts.cairo(fontWeight: FontWeight.bold,fontSize: 24.sp,color: Colors.white),),
            SizedBox(height: 10.0.h,),
           // Text('شركة الأجهزة المتقدمة' ,style: GoogleFonts.cairo(fontWeight: FontWeight.w400,fontSize: 16.sp,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
