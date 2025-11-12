import 'package:cherubini/core/error/presentation/widgets/error_screen_header.dart';
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
            ErrorScreenHeader(),
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
