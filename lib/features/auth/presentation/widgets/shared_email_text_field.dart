import '../../../../config/errors/widgets/error_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class SharedEmailTextField extends StatelessWidget {
  const SharedEmailTextField({super.key, required this.emailController});
  final TextEditingController emailController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: emailController,
          hintText: AppStrings.emailHintAr,
          prefixIcon: CustomSVGImage(asset: AppAssets.email, fit: BoxFit.none),
        ),
        BlocBuilder<ErrorCubit, CubitStates>(builder: (context, state) =>
            ErrorText(
                showError: context.read<ErrorCubit>().errors.contains(Errors.EMAIL_ERROR),
                text: getError[Errors.EMAIL_ERROR])),
      ],
    );
  }
}
