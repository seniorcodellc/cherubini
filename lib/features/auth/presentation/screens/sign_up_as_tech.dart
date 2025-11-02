import 'package:cherubini/features/Auth/presentation/widgets/choose_trader_drop_down.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/shared_enter_name_text_field.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';
import '../../data/model/tech_sign_up_model.dart';
import '../managers/auth_cubit.dart';
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
    return Form(
      key: _formKey,
      child: CustomBackground(
        backgroundColor: AppColors.bgColor,
        appBar: CustomAppbar(title: AppStrings.signUpAsNewTechAr),
        child: Padding(
          padding: getPadding(horizontal: 16.w),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    32.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.fullNameAr,
                      child: SharedEnterNameTextField(
                        nameController: nameController,
                      ),
                    ),
                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.phoneNumAr,

                      child: SharedPhoneTextField(
                        phoneController: phoneController,
                      ),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.emailAr,
                      child: SharedEmailTextField(
                        emailController: emailController,
                      ),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.chooseMerchantAr,
                      child: ChooseTraderDropDown(),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.merchantCheckAr,
                      child: CustomTextFormField(
                        controller: checkController,
                        hintText: AppStrings.merchantCheckHintAr,
                        prefixIcon: CustomSVGImage(
                          asset: AppAssets.questionMark,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: AppStrings.passwordAr,
                      child: SharedPasswordTextField(
                        passwordController: passwordController,
                      ),
                    ),

                    40.vs,
                    CustomButton(
                      text: AppStrings.createAccountButtonAr,

                      onPressed: () {
                        if (_formKey.currentState!.validate().isTrue) {
                          context.read<AuthCubit>().register(
                            TechSignUpModel(
                              confirmPassword: passwordController.text,
                              name: nameController.text,
                              phone: phoneController.text,
                              email: emailController.text,
                              merchantId: 1,
                              password: passwordController.text,

                              // check: checkController.text,
                            ),
                          );
                        }
                      },
                    ),
                    24.vs,
                    Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        AppStrings.techInstructionAr,
                        style: getRegularTextStyle(color: AppColors.grayHint),
                      ),
                    ),
                    37.vs,
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
