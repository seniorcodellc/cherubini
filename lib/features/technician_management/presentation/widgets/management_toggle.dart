import 'package:cherubini/exports.dart';
import 'package:cherubini/features/technician_management/presentation/widgets/shared_toggle_item.dart';

class ManagementToggle extends StatelessWidget {
  final int selectedTabIndex;
  final ValueChanged<int> onTabSelected;

  const ManagementToggle({
    super.key,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      margin: getPadding(horizontal: 18.w),
      decoration: BoxDecoration(
        color: AppColors.mutedBlue,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.r,
            blurRadius: 2.r,
            offset: Offset(0, 1.h),
          ),
        ],
      ),
      child: Padding(
        padding: getPadding(horizontal: 4.w, vertical: 4.h),
        child: Row(
          children: [
            SharedToggleItem(
              text: AppStrings.activeTech,
              isSelected: selectedTabIndex == 0,
              onTap: () => onTabSelected(0),
            ),
            4.hs,
            Expanded(
              child: SharedToggleItem(
                text: AppStrings.waitingTech,
                isSelected: selectedTabIndex == 1,
                onTap: () => onTabSelected(1),
              ),
            ),
            4.hs,
            Expanded(
              child: SharedToggleItem(
                text: AppStrings.notActiveTech,
                isSelected: selectedTabIndex == 2,
                onTap: () => onTabSelected(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}