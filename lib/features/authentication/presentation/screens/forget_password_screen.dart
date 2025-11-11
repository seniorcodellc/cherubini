import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/authentication/presentation/widgets/forget_password_screen_header.dart';
import 'package:cherubini/features/authentication/presentation/widgets/shared_forget_password_title.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../exports.dart';
import '../widgets/custom_login_signup_textfield_text.dart';
import '../widgets/shared_email_text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});
  TextEditingController emailController = TextEditingController();
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
              SharedForgetPasswordTitle(),
              20.vs,
              ForgetPasswordScreenHeader(),
              32.vs,
              CustomTitleAndField(
                text: AppStrings.yourEmail,
                child: SharedEmailTextField(emailController: emailController),
              ),
              40.vs,
              CustomButton(
                text: AppStrings.resetPassword,
                style: getRegularTextStyle(color: AppColors.white),
                onPressed: () {
                  checkStringError(
                    context,
                    emailController.text,
                    Errors.EMAIL_ERROR,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
