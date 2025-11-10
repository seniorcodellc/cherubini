import 'package:cherubini/exports.dart';

class TechName extends StatelessWidget {
  const TechName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(vertical: 16.0.h),
      child: Row(
        children: [
          Text(
            "الفني:",
            style: getRegularTextStyle(
              fontSize: 16,
              color: AppColors.subTitleColor,
            ),
          ),
          Text(
            AppStrings.techNameAr,
            style: getRegularTextStyle(
              fontSize: 16,
              color: AppColors.secondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
