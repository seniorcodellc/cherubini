import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedEmailTextField extends StatelessWidget {
  const SharedEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "example1@gmail .com",
      prefixIcon: CustomSVGImage(asset: AppAssets.email, fit: BoxFit.none),
    );
  }
}
