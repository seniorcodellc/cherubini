import 'package:cherubini/exports.dart';

class CheckRow extends StatelessWidget {
  const CheckRow({super.key, required this.onTap, required this.isSelected, required this.label,});

  final VoidCallback onTap;
  final bool isSelected;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Container(
        padding: getPadding(vertical: 8.h),
        child: Row(
          children: [
            Directionality(
              textDirection: TextDirection.ltr,
              child: CustomSVGImage(
                asset: isSelected ? AppAssets.checkFilled : AppAssets.checkEmpty,
              ),
            ),
            6.hs,
            Text(
              label,
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: isSelected ? AppColors.primaryColor : AppColors.grayHint,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
