import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_text_form_field.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/gonernment_place_row.dart';
import 'package:cherubini/features/auth/presentation/widgets/shared_enter_name_text_field.dart';
import '../../../../exports.dart';
import '../../data/model/request_model/register_request_model.dart';
import '../managers/auth_cubit.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';
import '../widgets/sign_up_trader_instruction.dart';

class SignUpAsTrader extends StatelessWidget {
  SignUpAsTrader({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: "تسجيل تاجر جديد"),
      child: Padding(
        padding: getPadding(horizontal: 16, vertical: 32),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomLoginSignupTextfieldText(
                      text: "الاسم الكامل",
                      child: SharedEnterNameTextField(nameController: nameController)
                    ),
                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: "رقم الجوال",
                      child: SharedPhoneTextField(
                        phoneController: phoneController,
                      ),
                    ),
                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: "اسم الشركة",
                      child: CustomTextFormField(
                        controller: companyNameController,
                        hintText: "أدخل اسم الشركة",
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
                      text: "البريد الإلكترروني",
                      child: SharedEmailTextField(
                        emailController: emailController,
                      ),
                    ),
                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: "العنوان",
                      child: CustomLoginSignupTextfield(
                        hint: "المدينة , الحي , الشارع",
                        asset: AppAssets.location,
                      ),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: "كلمة المرور",
                      child: SharedPasswordTextField(
                        passwordController: passwordController,
                      ),
                    ),

                    16.vs,
                    CustomLoginSignupTextfieldText(
                      text: "تأكيد كلمة المرور",
                      child: SharedPasswordTextField(
                        passwordController: passwordController,
                      ),
                    ),

                    40.vs,
                    CustomButton(text: "إنشاء حساب", onPressed: () {
                      if (_formKey.currentState!.validate().isTrue) {
                        context.read<AuthCubit>().register(
                            registerMerchantModel: RegisterRequestModel(
                              name:nameController.text ,
                              email: emailController.text,
                              phone:phoneController.text ,
                              password:passwordController.text ,
                              passwordConfirmation:passwordController.text ,
                              governorateId: '2',
                              regionId: '1',
                            )
                        );
                      }

                    }),
                    24.vs,
                    SignUpTraderInstruction(),
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
