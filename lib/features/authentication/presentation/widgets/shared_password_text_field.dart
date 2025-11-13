import 'package:cherubini/exports.dart';
import 'package:cherubini/config/errors/widgets/error_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class SharedPasswordTextField extends StatefulWidget {
  const SharedPasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  State<SharedPasswordTextField> createState() =>
      _SharedPasswordTextFieldState();
}

class _SharedPasswordTextFieldState extends State<SharedPasswordTextField> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          controller: widget.passwordController,
          hintText: AppStrings.passwordHint,
          style: getRegularTextStyle(color: AppColors.darkGray, fontSize: 14),
          obscureText: secure,
          prefixIcon: CustomSVGImage(asset: AppAssets.lock, fit: BoxFit.none),
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                secure = !secure;
              });
            },
            child: CustomSVGImage(asset: AppAssets.eyeOn, fit: BoxFit.none),
          ),
        ),
        BlocBuilder<ErrorCubit, CubitStates>(
          builder: (context, state) => ErrorText(
            showError: context.read<ErrorCubit>().errors.contains(
              Errors.PASSWORD_ERROR,
            ),
            text: getError[Errors.PASSWORD_ERROR],
          ),
        ),
      ],
    );
  }
}
