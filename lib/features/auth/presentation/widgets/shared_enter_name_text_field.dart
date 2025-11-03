import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedEnterNameTextField extends StatelessWidget {
  const SharedEnterNameTextField({super.key, required this.nameController});
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: AppStrings.fullNameHintAr,
      prefixIcon: CustomSVGImage(asset: AppAssets.profile, fit: BoxFit.none),
      validator: (text) =>
          text.validateName.isFalse ? AppStrings.nameError.trans : null,
      controller: nameController,
    );
  }
}
