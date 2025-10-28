import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_text_form_field.dart';

import '../../../../exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "رقم الجوال",
              style: getRegularTextStyle(
                color: AppColors.primaryColor,
                fontSize: 14.sp,
              ),
            ),
            8.vs,
            CustomTextFormField(hintText: "568912345"),
            16.vs,
            Text(
              "كلمة المرور",
              style: getRegularTextStyle(
                color: AppColors.primaryColor,
                fontSize: 14.sp,
              ),
            ),
            8.vs,
            CustomTextFormField(hintText: "*************"),
          ],
        ),
      ),
    );
  }
}
