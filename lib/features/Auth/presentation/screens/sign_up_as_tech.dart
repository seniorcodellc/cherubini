import 'package:cherubini/core/widgets/custom_drop_down.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';
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
                    "اختر التاجر",
                    style: getRegularTextStyle(color: AppColors.primaryColor),
                  ),
                  8.vs,
                  CustomDropDown(
                    items: [
                      CustDropdownMenuItem(
                        value: 0,
                        child: Text("اختر التاجر المرتبط به "),
                      ),
                    ],
                    onChanged: () {},
                  ),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
