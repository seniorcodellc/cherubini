import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';
import '../../../../exports.dart';

class SharedPhoneTextField extends StatelessWidget {
  const SharedPhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLoginSignupTextfield(
      hint: "568912345",
      asset: AppAssets.phone,
    );
  }
}
