import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedPhoneTextField extends StatelessWidget {
  const SharedPhoneTextField({super.key, required this.phoneController});
  final TextEditingController phoneController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: AppStrings.phoneNumHintAr,
      controller: phoneController,
      prefixIcon: CustomSVGImage(asset: AppAssets.phone, fit: BoxFit.none),
      validator: (text) =>
          text.validatePhone.isFalse ? AppStrings.phoneError.trans : null,
    );
  }
}
