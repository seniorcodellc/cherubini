import 'package:cherubini/features/authentication/data/model/request_model/tech_sign_up_model.dart';
import 'package:cherubini/features/authentication/presentation/managers/auth_cubit.dart';
import 'package:cherubini/features/authentication/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/authentication/presentation/widgets/shared_enter_name_text_field.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';
import '../widgets/choose_trader_drop_down.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';

class SignUpAsTech extends StatelessWidget {
  SignUpAsTech({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController checkController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.signUpAsNewTechAr),
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: _formKey,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.vs,
                    CustomTitleAndField(
                      text: AppStrings.fullNameAr,
                      child: SharedEnterNameTextField(nameController: nameController),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.phoneNumAr,

                      child: SharedPhoneTextField(phoneController: phoneController),
                    ),

                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.emailAr,
                      child: SharedEmailTextField(emailController: emailController),
                    ),

                    16.vs,
                    CustomTitleAndField(text: AppStrings.chooseMerchantAr, child: ChooseTraderDropDown()),

                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.merchantCheckAr,
                      child: CustomTextFormField(
                        controller: checkController,
                        hintText: AppStrings.merchantCheckHintAr,
                        prefixIcon: CustomSVGImage(asset: AppAssets.questionMark, fit: BoxFit.none),
                      ),
                    ),

                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.passwordAr,
                      child: SharedPasswordTextField(passwordController: passwordController),
                    ),

                    40.vs,
                    CustomButton(
                      text: AppStrings.createAccountButtonAr,

                      onPressed: () {
                        checkStringError(context, emailController.text, Errors.EMAIL_ERROR);
                        checkStringError(context, passwordController.text, Errors.PASSWORD_ERROR);
                        checkStringError(context, nameController.text, Errors.NAME_ERROR);
                        checkStringError(context, phoneController.text, Errors.PHONE_ERROR);
                        if (dontHaveErrors(context)) {
                          print("start api request");
                          //     print("context ${context.read<AuthCubit>()}");

                          context.read<AuthCubit>().registerTech(
                            TechSignUpModel(
                              // confirmPassword: passwordController.text,
                              name: nameController.text,
                              phone: phoneController.text,
                              email: emailController.text,
                              merchantId: 1,
                              password: passwordController.text,

                              // check: checkController.text,
                            ),
                          );
                          print("end");
                        }
                      },
                    ),
                    24.vs,
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(AppStrings.techInstructionAr, style: getRegularTextStyle(color: AppColors.grayHint)),
                    ),
                    37.vs,
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