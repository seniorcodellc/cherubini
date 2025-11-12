import 'package:cherubini/core/widgets/second_shared_custom_button.dart';
import 'package:cherubini/exports.dart';

import '../../../widgets/custom_appbar.dart';
import '../../../widgets/custom_background.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      appBar: CustomAppbar(title: ''),
      showAppbar: true,
      appBarBackgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 177.82.w,
                  height: 177.82.h,
                  decoration: BoxDecoration(
                    color: AppColors.mutedBlue,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: CustomSVGImage(
                    asset: AppAssets.errorAlarm,
                    fit: BoxFit.none,
                  ),
                ),
                14.vs,
                Text(
                  AppStrings.anErrorOccurred,
                  style: getRegularTextStyle(
                    fontSize: 15,
                    color: AppColors.errorHeader,
                  ),
                ),
                Text(
                  AppStrings.errorScreenHeader,
                  style: getRegularTextStyle(
                    fontSize: 15,
                    color: AppColors.errorHeader,
                  ),
                ),
              ],
            ),
            143.vs,
            CustomButton(text: AppStrings.homeScreen, onPressed: () {}),
            18.vs,
            SecondSharedCustomButton(
              text: AppStrings.tryAgain,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
