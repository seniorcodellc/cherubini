import 'package:cherubini/features/authentication/presentation/widgets/enter_code_screen_conclusion.dart';
import 'package:cherubini/features/authentication/presentation/widgets/enter_code_screen_otp.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../exports.dart';
import '../widgets/shared_forget_password_title.dart';

class EnterCodeScreen extends StatelessWidget {
  EnterCodeScreen({super.key});
  TextEditingController otpController = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      appBar: CustomAppbar(title: ''),
      showAppbar: true,
      appBarBackgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.h),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              24.vs,
              SharedForgetPasswordTitle(),
              20.vs,
              Text(
                AppStrings.enterCodeScreenHeader,
                style: getRegularTextStyle(
                  color: AppColors.darkGray,
                  height: 2,
                ),
              ),
              24.vs,
              EnterCodeScreenOtp(otpController: otpController),
              40.vs,
              CustomButton(
                text: AppStrings.checkCode,
                style: getRegularTextStyle(color: AppColors.white),
                onPressed: () {
                  checkStringError(
                    context,
                    otpController.text,
                    Errors.VERIFICATION_ERROR,
                  );
                  if (dontHaveErrors(context)) {
                    Routes.forgetPasswordRoute2.moveTo();
                  }
                },
              ),
              32.vs,
              EnterCodeScreenConclusion(),
            ],
          ),
        ),
      ),
    );
  }
}
