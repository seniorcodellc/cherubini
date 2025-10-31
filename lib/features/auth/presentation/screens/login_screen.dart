import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_have_no_account_row.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_welcome_body.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_password_text_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_phone_text_field.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';

import '../../../../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w, top: 79.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LogInWelcomeBody(),
                  32.vs,
                  CustomLoginSignupTextfieldText(text: "رقم الجوال"),
                  8.vs,
                  SharedPhoneTextField(),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "كلمة المرور"),
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
                  CustomButton(
                    text: "تسجيل الدخول",
                    onPressed: () {
                      Routes.techDashboard.moveTo();
                    },
                  ),
                  42.vs,
                  LogInHaveNoAccountRow(),
                  32.vs,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        onPressed: () {
                          Routes.registerTraderRoute.moveTo();
                        },
                        text: "تسجيل تاجر",
                      ),
                      CustomElevatedButton(
                        onPressed: () {
                          Routes.registerTechRoute.moveTo();
                        },
                        text: "تسجيل فني",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
