import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield.dart';

import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedEnterNameTextField extends StatelessWidget {
  const SharedEnterNameTextField({super.key, required this.nameController});
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "أدخل ااسمك بالكامل",
      prefixIcon: CustomSVGImage(asset: AppAssets.profile, fit: BoxFit.none),
      validator: (text) => text.validateName.isFalse?AppStrings.nameError:null,
      controller: nameController,

    );
  }
}
