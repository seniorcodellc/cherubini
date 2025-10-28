import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_text_form_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/shared_phone_text_field.dart';
import 'package:cherubini/features/Auth/presentation/widgets/sign_up_trader_instruction.dart';

import '../../../../exports.dart';
import '../widgets/shared_password_text_field.dart';

class SignUpAsTrader extends StatelessWidget {
  const SignUpAsTrader({super.key});

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  CustomTextFormField(
                    hintText: "example1@gmail .com",
                    prefixIcon: CustomSVGImage(
                      asset: AppAssets.email,
                      fit: BoxFit.none,
                    ),
                  ),
                  16.vs,
                  Text(
                    "العنوان",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  CustomTextFormField(
                    hintText: "المدينة , الحي , الشارع",
                    prefixIcon: CustomSVGImage(
                      asset: AppAssets.location,
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
                  16.vs,
                  Text(
                    "تأكيد كلمة المرور",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  SharedPasswordTextField(),
                  40.vs,
                  CustomButton(text: "إنشاء حساب", onPressed: () {}),
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
