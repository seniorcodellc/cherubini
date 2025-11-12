import 'package:cherubini/exports.dart';

class SharedToggleItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const SharedToggleItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color bgColor = isSelected ? AppColors.white : AppColors.mutedBlue;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(child: Padding(
          padding: getPadding(horizontal: 6.0.w,vertical: 2.0.h),
          child: Text(text, style: getSemiBoldTextStyle(fontSize: 12.sp,color: AppColors.primaryColor)),
        )),
      ),
    );
  }
}