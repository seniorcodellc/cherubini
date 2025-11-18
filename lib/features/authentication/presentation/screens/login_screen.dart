import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/authentication/data/model/request_model/login_model.dart';
import 'package:cherubini/features/authentication/presentation/managers/auth_cubit.dart';
import 'package:cherubini/features/authentication/presentation/widgets/custom_login_signup_textfield_text.dart';
import '../../../../exports.dart';
import '../widgets/log_in_have_no_account_row.dart';
import '../widgets/log_in_welcome_body.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w, top: 79.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LogInWelcomeBody(),
                    32.vs,
                    CustomTitleAndField(
                      text: AppStrings.email.trans,
                      child: SharedEmailTextField(
                        emailController: emailController,
                      ),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.password.trans,
                      child: SharedPasswordTextField(
                        passwordController: passwordController,
                      ),
                    ),
                    8.vs,
                    Align(
                      alignment: AlignmentDirectional.bottomEnd,
                      child: Text(
                        AppStrings.forgetPassword.trans,
                        style: getRegularTextStyle(
                          color: AppColors.accentColor,
                        ),
                      ),
                    ),
                    32.vs,
                    CustomButton(
                      text: AppStrings.login.trans,
                      onPressed: () {
                        checkStringError(
                          context,
                          emailController.text,
                          Errors.EMAIL_ERROR,
                        );
                        checkStringError(
                          context,
                          passwordController.text,
                          Errors.PASSWORD_ERROR,
                        );
                        if (dontHaveErrors(context)) {
                          print("start api request");
                          context.read<AuthCubit>().login(
                            LoginModel(
                              email: emailController.text,
                              password: passwordController.text,
                            ),
                          );
                        }
                        if (_formKey.currentState!.validate().isTrue) {}
                      },
                    ),
                    42.vs,
                    LogInHaveNoAccountRow(),
                    32.vs,
                    Row(
                      children: [
                        Expanded(
                          child: CustomElevatedButton(
                            onPressed: () {
                              Routes.registerTraderRoute.moveTo();
                            },
                            text: AppStrings.signUpAsMerchant.trans,
                            style: getRegularTextStyle(fontSize: 13,color: AppColors.primaryColor),
                          ),
                        ),
                        16.hs,
                        Expanded(
                          child: CustomElevatedButton(
                            onPressed: () {
                              Routes.registerTechRoute.moveTo();
                            },
                            text: AppStrings.signUpAsTech.trans,
                            style: getRegularTextStyle(fontSize: 13,color: AppColors.primaryColor),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
