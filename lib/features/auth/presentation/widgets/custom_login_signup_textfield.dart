import 'package:cherubini/core/widgets/custom_text_form_field.dart';

import '../../../../exports.dart';

class CustomLoginSignupTextfield extends StatelessWidget {
  const CustomLoginSignupTextfield({
    super.key,
    required this.hint,
    required this.asset,
  });

  final String hint;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: hint,
      prefixIcon: CustomSVGImage(asset: asset, fit: BoxFit.none),
    );
  }
}
