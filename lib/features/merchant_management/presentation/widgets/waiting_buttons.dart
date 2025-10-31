import 'package:cherubini/exports.dart';

class WaitingButtons extends StatelessWidget {
  const WaitingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 12.0.h, bottom: 12.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: 'قبول',
            onPressed: () {},
            backgroundColor: AppColors.primaryColor,
            svgIconPath: AppAssets.accept,
            borderColor: AppColors.primaryColor,
            height: 42.h,
            width: 146.w,
          ),
          18.hs,
          CustomButton(
            text: 'رفض',
            onPressed: () {},
            backgroundColor: AppColors.errorColor,
            svgIconPath: AppAssets.cancel,
            borderColor: AppColors.errorColor,
            height: 42.h,
            width: 146.w,
          ),
        ],
      ),
    );
  }
}
