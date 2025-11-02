import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedEmailTextField extends StatelessWidget {
  const SharedEmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: AppStrings.emailHintAr,
      prefixIcon: CustomSVGImage(asset: AppAssets.email, fit: BoxFit.none),
      validator: (text) =>
          text.validateEmail.isFalse ? AppStrings.emailError : null,
    );
  }
}
