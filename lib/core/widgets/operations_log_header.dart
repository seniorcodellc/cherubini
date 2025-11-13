import 'package:cherubini/features/core/widgets/shared_text_column.dart';

import 'custom_divider.dart';
import '../../exports.dart';

class OperationsLogHeader extends StatelessWidget {
  const OperationsLogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 107.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        gradient: LinearGradient(
          colors: [AppColors.gradientColorStart, AppColors.gradientColorEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(horizontal: 24.w),
            child: SharedTextColumn(
              title: AppStrings.totalOperations,
              subTitle: '3',
            ),
          ),
          CustomDivider(width: 0.6.w, height: 40.h, color: AppColors.white),
          Padding(
            padding: getPadding(horizontal: 24.w),
            child: SharedTextColumn(
              title: AppStrings.totalPoints,
              subTitle: '500',
            ),
          ),
        ],
      ),
    );
  }
}
