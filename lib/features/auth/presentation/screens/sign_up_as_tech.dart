import 'package:cherubini/features/Auth/presentation/widgets/choose_trader_drop_down.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';
import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/shared_enter_name_text_field.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';
import '../widgets/shared_email_text_field.dart';
import '../widgets/shared_password_text_field.dart';
import '../widgets/shared_phone_text_field.dart';

class SignUpAsTech extends StatelessWidget {
  const SignUpAsTech({super.key});

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
                  CustomLoginSignupTextfieldText(text: "الاسم الكامل"),
                  8.vs,
                  SharedEnterNameTextField(),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "رقم الجوال"),
                  8.vs,
                  SharedPhoneTextField(),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "البريد الإلكترروني"),
                  8.vs,
                  SharedEmailTextField(),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "اختر التاجر"),
                  8.vs,
                  ChooseTraderDropDown(),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "سؤال التحقق من التاجر"),
                  8.vs,
                  CustomLoginSignupTextfield(
                    hint: "أجب على سؤال  التحقق",
                    asset: AppAssets.questionMark,
                  ),
                  16.vs,
                  CustomLoginSignupTextfieldText(text: "كلمة المرور"),
                  8.vs,
                  SharedPasswordTextField(),
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
