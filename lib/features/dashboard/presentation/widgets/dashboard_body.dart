
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
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PointsList(),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 12.0.h),
          child: Text(
            'إجراءات سريعة',
            // style: GoogleFonts.cairo(
            //   fontWeight: FontWeight.bold,
            //   fontSize: 16.sp,
            //   color: Color(0xff0D47A1),
            // ),
          ),
        ),
        QuickActionWidget(),
        Padding(
          padding:  EdgeInsets.only(left: 16.0.w,right: 16.0.w,top: 24.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Text('عرض الكل ',style: AppStyles.font14PrimaryRegular,),
             // Text('أخر عمليات المسح ',style: AppStyles.font16PrimaryBold,),
            ],
          ),
        ),
        LastScanList(),
      ],
    );
  }
}
