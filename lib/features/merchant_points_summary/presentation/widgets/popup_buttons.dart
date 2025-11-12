import 'package:cherubini/exports.dart';

class PopupButtons extends StatelessWidget {
  const PopupButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(top: 12.0.h,bottom: 10.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            text: AppStrings.save,
            onPressed: () {},
            backgroundColor: AppColors.primaryColor,
            borderColor: AppColors.primaryColor,
            height: 42.h,
            width: 148.w,
          ),
          16.hs,
          CustomButton(
            text: AppStrings.cancel,
            onPressed: () { pop();},
            backgroundColor: AppColors.subTitleColor,
            borderColor: AppColors.subTitleColor,
            height: 42.h,
            width: 148.w,
          ),
        ],
      ),
    );

  }
}
