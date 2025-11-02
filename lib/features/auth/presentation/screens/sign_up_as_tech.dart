import 'package:cherubini/features/Auth/presentation/widgets/choose_trader_drop_down.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/shared_enter_name_text_field.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../exports.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';

class SignUpAsTech extends StatelessWidget {
   SignUpAsTech({super.key});
TextEditingController emailController = TextEditingController();
TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: "تسجيل فني جديد"),
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  32.vs,
                  CustomLoginSignupTextfieldText(text: "الاسم الكامل",
                  child: SharedEnterNameTextField(nameController: nameController,),
                  ),

                  16.vs,
                  CustomLoginSignupTextfieldText(text: "رقم الجوال",
                  child:
                  SharedPhoneTextField(emailController: emailController,),
                    ),

                  16.vs,
                  CustomLoginSignupTextfieldText(text: "البريد الإلكترروني",
                  child: SharedEmailTextField(),
                  ),

                  16.vs,
                  CustomLoginSignupTextfieldText(text: "اختر التاجر",
                  child:    ChooseTraderDropDown(),
                  ),

                  16.vs,
                  CustomLoginSignupTextfieldText(text: "سؤال التحقق من التاجر",
                  child: CustomLoginSignupTextfield(
                    hint: "أجب على سؤال  التحقق",
                    asset: AppAssets.questionMark,
                  ),
                  ),

                  16.vs,
                  CustomLoginSignupTextfieldText(text: "كلمة المرور",

                  child: SharedPasswordTextField(),
                  ),

                  40.vs,
                  CustomButton(
                    text: "إنشاء حساب",
                    onPressed: () {
                      Routes.registerAccept.moveTo();
                    },
                  ),
                  24.vs,
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "سيتم مراجعة طلبك من قبل التاجر قبل الموافقة",
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
    );
  }
}
