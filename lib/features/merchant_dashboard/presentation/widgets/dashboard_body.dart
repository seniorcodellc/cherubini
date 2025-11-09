import 'package:cherubini/config/utils/size_utils.dart';
import 'package:cherubini/core/utils/app_colors.dart';
import 'package:cherubini/core/utils/app_style.dart';
import 'package:cherubini/features/merchant_dashboard/presentation/widgets/points_list.dart';
import 'package:cherubini/features/merchant_dashboard/presentation/widgets/quick_action_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';

class DashboardBody extends StatelessWidget {
  const DashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PointsList(),
        Padding(
          padding: getPadding(horizontal: 16.0.w, vertical: 8.0.h),
          child: Text(
            AppStrings.quickProcedures,
            style: getBoldTextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        QuickActionWidget(),
        Padding(
          padding: getPadding(
            start: 16.0.w,
            end: 16.0.w,
            top: 16.0.h,
            bottom: 8.0.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.lastScanOperations,
                style: getBoldTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                AppStrings.displayAll,
                style: getRegularTextStyle(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
