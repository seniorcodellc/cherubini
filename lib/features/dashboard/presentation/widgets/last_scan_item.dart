
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_assets.dart';
import '../../data/models/scan_model.dart';

class LastScanItem extends StatelessWidget {
  const LastScanItem({super.key, required this.model});
  final ScanModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsGeometry.symmetric(horizontal: 16.0.w,vertical: 16.0.h),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
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
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${model.points} نقطه',
                  textDirection: TextDirection.rtl,
                  //style: AppStyless.font14AccentRegular,
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      model.title,
                    //  style: AppStyless.font16PrimaryRegular,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      model.date,
                    //  style: AppStyless.font20ForegroundRegular,
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                SizedBox(width: 12.w),
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: const Color(0xffE3F2FD),
                    borderRadius: BorderRadius.circular(16.0.r),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(AppAssets.scanFilled),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 14.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${model.number}  منتجات ',
                    textDirection: TextDirection.rtl,
                   // style: AppStyless.font14ForegroundRegular,
                  ),
                  Text(
                    'الفني: ${model.tech}',
                   // style: AppStyless.font14ForegroundRegular,
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