import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../data/model/request_model/register_merchant_model.dart';
import '../managers/auth_cubit.dart';
import '../widgets/custom_login_signup_textfield_text.dart';
import '../widgets/gonernment_place_row.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_enter_name_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';
import '../widgets/sign_up_trader_instruction.dart';
class SignUpAsTrader extends StatelessWidget {
  SignUpAsTrader({super.key});
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.signUpAsNewMerchantAr),
      child: Form(
        key: _formKey,
        child: Padding(
          padding: getPadding(horizontal: 16, vertical: 32),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      onPressed: () {
                        if (_formKey.currentState!.validate().isTrue) {
                          context.read<AuthCubit>().registerMerchant(
                            RegisterMerchantModel(
                              name: nameController.text,
                              email: emailController.text,
                              phone: phoneController.text,
                              password: passwordController.text,
                              passwordConfirmation:passwordController.text ,
                              governorateId: 2,
                              regionId: 1,
                            ),
                          );
                        }

                      },
                    ),
                    24.vs,
                    SignUpTraderInstruction(),
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