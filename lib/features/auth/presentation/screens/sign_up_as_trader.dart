import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_text_form_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/sign_up_trader_instruction.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/gonernment_place_row.dart';
import 'package:cherubini/features/auth/presentation/widgets/shared_enter_name_text_field.dart';

import '../../../../exports.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';

class SignUpAsTrader extends StatelessWidget {
  SignUpAsTrader({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.signUpAsNewMerchantAr),
      child: Padding(
        padding: getPadding(horizontal: 16, vertical: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  16.vs,
                  CustomLoginSignupTextfieldText(
                    text: AppStrings.phoneNumAr,
                    child: SharedPhoneTextField(
                      phoneController: phoneController,
                    ),
                  ),
                  16.vs,
                  CustomLoginSignupTextfieldText(
                    text: AppStrings.companyNameAr,
                    child: CustomTextFormField(
                      controller: companyNameController,
                      hintText: AppStrings.companyNameHintAr,
                      prefixIcon: CustomSVGImage(
                        asset: AppAssets.company,
                        fit: BoxFit.none,
                      ),
                      validator: (text) => text.validateName.isFalse
                          ? AppStrings.nameError
                          : null,
                    ),
                  ),

                  16.vs,
                  GovernmentPlaceRow(),
                  16.vs,
                  CustomLoginSignupTextfieldText(
                    text: AppStrings.emailAr,
                    child: SharedEmailTextField(
                      emailController: emailController,
                    ),
                  ),
                  16.vs,
                  CustomLoginSignupTextfieldText(
                    text: AppStrings.addressAr,
                    child: CustomTextFormField(
                      hintText: AppStrings.addressHintAr,
                      prefixIcon: CustomSVGImage(
                        asset: AppAssets.location,
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

                  16.vs,
                  CustomLoginSignupTextfieldText(
                    text: AppStrings.confirmPasswordAr,
                    child: SharedPasswordTextField(
                      passwordController: passwordController,
                    ),
                  ),

                  40.vs,
                  CustomButton(
                    text: AppStrings.createAccountButtonAr,
                    onPressed: () {},
                  ),
                  24.vs,
                  SignUpTraderInstruction(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
