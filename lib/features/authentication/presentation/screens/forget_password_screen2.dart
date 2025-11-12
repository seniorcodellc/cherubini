import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/authentication/presentation/widgets/shared_confirm_password_text_field.dart';
import 'package:cherubini/features/authentication/presentation/widgets/shared_password_text_field.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/custom_login_signup_textfield_text.dart';

class ForgetPasswordScreen2 extends StatelessWidget {
  ForgetPasswordScreen2({super.key});
  GlobalKey formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    24.vs,
                    Text(
                      AppStrings.assignNewPassword,
                      style: getSemiBoldTextStyle(
                        fontSize: 24,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    20.vs,
                    Text(
                      AppStrings.createNewPassword,
                      style: getRegularTextStyle(color: AppColors.darkGray),
                    ),
                    32.vs,
                    CustomTitleAndField(
                      text: AppStrings.password,
                      child: SharedPasswordTextField(
                        passwordController: passwordController,
                      ),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.confirmPassword,
                      child: SharedConfirmPasswordTextField(
                        confirmPasswordController: confirmPasswordController,
                      ),
                    ),
                    48.vs,
                    CustomButton(
                      text: AppStrings.save,
                      style: getRegularTextStyle(color: AppColors.white),
                      onPressed: () {
                        checkStringError(
                          context,
                          passwordController.text,
                          Errors.PASSWORD_ERROR,
                        );
                        checkStringError(
                          context,
                          confirmPasswordController.text,
                          Errors.MATCHING_PASSWORD_ERROR,
                        );
                        if (dontHaveErrors(context)) {}
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
