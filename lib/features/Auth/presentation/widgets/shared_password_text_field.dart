import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class SharedPasswordTextField extends StatelessWidget {
  const SharedPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "*************",
      prefixIcon: CustomSVGImage(
        asset: AppAssets.lock,
        width: 24,
        height: 24,
        fit: BoxFit.none,
      ),
      suffixIcon: CustomSVGImage(
        asset: AppAssets.eyeOn,
        width: 24,
        height: 24,
        fit: BoxFit.none,
      ),
    );
  }
}
