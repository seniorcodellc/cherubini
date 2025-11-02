import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedPhoneTextField extends StatelessWidget {
  const SharedPhoneTextField({super.key, required this.phoneController});
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: "568912345",
      controller: phoneController,
      prefixIcon: CustomSVGImage(asset: AppAssets.phone),
      validator: (text) =>
          text.validatePhone.isFalse ? AppStrings.phoneError : null,
    );
  }
}
