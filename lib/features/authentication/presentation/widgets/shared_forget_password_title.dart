import 'package:cherubini/exports.dart';

class SharedForgetPasswordTitle extends StatelessWidget {
  const SharedForgetPasswordTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppStrings.forgetPassword,
      style: getSemiBoldTextStyle(fontSize: 24, color: AppColors.primaryColor),
    );
  }
}
