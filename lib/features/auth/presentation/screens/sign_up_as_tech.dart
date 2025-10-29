import 'package:cherubini/features/Auth/presentation/widgets/choose_trader_drop_down.dart';

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
                  Text(
                    "الاسم الكامل",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  CustomTextFormField(
                    hintText: "أدخل ااسمك بالكامل",
                    style: getRegularTextStyle(color: AppColors.grayHint),
                    prefixIcon: CustomSVGImage(
                      asset: AppAssets.profile,
                      fit: BoxFit.none,
                    ),
                  ),
                  16.vs,
                  Text(
                    "رقم الجوال",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  SharedPhoneTextField(),
                  16.vs,
                  Text(
                    "البريد الإلكترروني",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  SharedEmailTextField(),
                  16.vs,
                  Text(
                    "اختر التاجر",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  ChooseTraderDropDown(),
                  16.vs,
                  Text(
                    "سؤال التحقق من التاجر",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  CustomTextFormField(
                    hintText: "أجب على سؤال  التحقق",
                    prefixIcon: CustomSVGImage(
                      asset: AppAssets.questionMark,
                      fit: BoxFit.none,
                    ),
                  ),
                  16.vs,
                  Text(
                    "كلمة المرور",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  SharedPasswordTextField(),
                  40.vs,
                  CustomButton(text: "إنشاء حساب", onPressed: () {}),
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
