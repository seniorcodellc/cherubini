import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedPhoneTextField extends StatelessWidget {
  final TextEditingController emailController;
  const SharedPhoneTextField({required this.emailController,super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "example1@gmail.com",
      prefixIcon: CustomSVGImage(asset:AppAssets.email, fit: BoxFit.none),
      validator: (text) => text.validateEmail.isFalse?AppStrings.emailError:null,
    );


  }
}
