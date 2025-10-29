import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_text_form_field.dart';

class SharedPasswordTextField extends StatelessWidget {
  const SharedPasswordTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "*************",
      prefixIcon: CustomSVGImage(asset: AppAssets.lock, fit: BoxFit.none),
      suffixIcon: CustomSVGImage(asset: AppAssets.eyeOn, fit: BoxFit.none),
    );
  }
}
