import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_have_no_account_row.dart';
import 'package:cherubini/features/Auth/presentation/widgets/log_in_welcome_body.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_password_text_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_phone_text_field.dart';

import '../../../../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
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

                  SharedPhoneTextField(),
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
                      CustomElevatedButton(
                        onPressed: () {
                          Routes.registerTraderRoute.moveToAndRemoveCurrent();
                        },
                        text: "تسجيل تاجر",
                      ),
                      CustomElevatedButton(
                        onPressed: () {
                          Routes.registerTechRoute.moveToAndRemoveCurrent();
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
