import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';

import '../../../../exports.dart';

class SharedEnterNameTextField extends StatelessWidget {
  const SharedEnterNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomLoginSignupTextfield(
      hint: "أدخل ااسمك بالكامل",
      asset: AppAssets.profile,
    );
  }
}
