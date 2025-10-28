import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_box.dart';
import 'package:cherubini/core/widgets/custom_divider.dart';
import 'package:cherubini/core/widgets/custom_text_form_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/horizontal_custom_divider.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_have_no_account_row.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_welcome_body.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_password_text_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_phone_icon.dart';
import 'package:cherubini/features/Auth/presentation/widgets/type_of_account_button.dart';

import '../../../../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LogInWelcomeBody(),
            32.vs,
            Text(
              "رقم الجوال",
              style: getRegularTextStyle(color: AppColors.primaryColor),
            ),
            8.vs,
            CustomTextFormField(
              hintText: "568912345",
              prefixIcon: SharedPhoneIcon(),
            ),
            16.vs,
            Text(
              "كلمة المرور",
              style: getRegularTextStyle(color: AppColors.primaryColor),
            ),
            8.vs,
            SharedPasswordTextField(),
            8.vs,
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "نسيت كلمة المرور؟",
                style: getRegularTextStyle(color: AppColors.accentColor),
              ),
            ),
            32.vs,
            CustomButton(text: "تسجيل الدخول", onPressed: () {}),
            42.vs,
            LogInHaveNoAccountRow(),
            32.vs,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypeOfAccountButton(text: "تسجيل تاجر"),
                TypeOfAccountButton(text: "تسجيل فني"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
