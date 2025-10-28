import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/models/points_model.dart';
class PointsItem extends StatelessWidget {
  const PointsItem({super.key, required this.model});
  final PointsModel model ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 16.0.h),
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
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
        padding: EdgeInsets.symmetric(vertical: 14.0.h, horizontal: 16.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                Text(
                  model.title,
                  // style: GoogleFonts.cairo(
                  //   fontSize: 16.sp,
                  //   fontWeight: FontWeight.w400,
                  //   color: Color(0xff555555),
                  // ),
                ),
                SizedBox(height: 8.h),
                Text(
                  model.number,
                  // style: GoogleFonts.cairo(
                  //   fontSize: 20.sp,
                  //   fontWeight: FontWeight.w400,
                  //   color: Color(0xff1976D2),
                  // ),
                ),
              ],
            ),
            SizedBox(width: 55.w),
            Container(
              width: 60.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Color(0xffE3F2FD),
                borderRadius: BorderRadius.circular(16.0.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(model.iconPath),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
