import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/presentation/widgets/shared_toggle_item.dart';

class ManagementToggle extends StatefulWidget {
  final Function(bool) onTabSelected;
  final bool? selectedTab;

  const ManagementToggle({
    super.key,
    required this.onTabSelected,
    this.selectedTab,
  });

  @override
  State<ManagementToggle> createState() => _ManagementToggleState();
}

class _ManagementToggleState extends State<ManagementToggle> {
  @override
  Widget build(BuildContext context) {
    final bool isSelected = widget.selectedTab ?? true;
    return Container(
      height: 55.h,
      margin: getPadding(horizontal: 18.w),
      decoration: BoxDecoration(
        color: AppColors.mutedBlue,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: getPadding(horizontal: 5.0.w),
        child: Row(
          children: [
            SharedToggleItem(
              text: "الفنيون النشطون (3)",
              color: isSelected ? AppColors.white : AppColors.mutedBlue,
              style: getBoldTextStyle(
                fontSize: 12.sp,
                color: AppColors.primaryColor,
              ),
              onTap: () {
                if (!isSelected) {
                  widget.onTabSelected(true);
                }
              },
            ),
            4.hs,
            SharedToggleItem(
              text: "قيد الانتظار (2)",
              color: !isSelected ? AppColors.white : AppColors.mutedBlue,
              style: getBoldTextStyle(
                fontSize: 12.sp,
                color: AppColors.primaryColor,
              ),
              onTap: () {
                if (isSelected) {
                  widget.onTabSelected(false);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}