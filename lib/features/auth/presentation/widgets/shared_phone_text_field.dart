import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedPhoneTextField extends StatelessWidget {
  const SharedPhoneTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "568912345",
      prefixIcon: CustomSVGImage(asset: AppAssets.phone, fit: BoxFit.none),
    );
  }
}
