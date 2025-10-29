
import 'package:cherubini/config/utils/size_utils.dart';
import 'package:cherubini/core/utils/app_colors.dart';
import 'package:cherubini/core/utils/app_style.dart';
import 'package:cherubini/features/dashboard/presentation/widgets/points_list.dart';
import 'package:cherubini/features/dashboard/presentation/widgets/quick_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'last_scan_list.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PointsList(),
        Padding(
          padding: getPadding(horizontal: 16.0.w,vertical: 8.0.h),
          child: Text(
            'إجراءات سريعة',
            style: getBoldTextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        QuickActionWidget(),
        Padding(
          padding: getPadding(start: 16.0.w,end: 16.0.w,top: 16.0.h,bottom: 8.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('أخر عمليات المسح ',style: getBoldTextStyle(fontSize: 14.sp,color: AppColors.primaryColor),),
              Text('عرض الكل ',style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.primaryColor),),
            ],
          ),
        ),
        LastScanList(),
      ],
    );
  }
}
