import 'package:cherubini/exports.dart';
import 'package:cherubini/config/errors/widgets/error_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginPasswordTextField extends StatelessWidget {
  const LoginPasswordTextField({super.key, required this.passwordController});

  final TextEditingController passwordController;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormField(
          controller: passwordController,
          hintText: AppStrings.passwordHint,
          style: getRegularTextStyle(color: AppColors.darkGray, fontSize: 14),
          prefixIcon: CustomSVGImage(asset: AppAssets.lock, fit: BoxFit.none),
          suffixIcon: CustomSVGImage(asset: AppAssets.eyeOn, fit: BoxFit.none),
        ),
        8.vs,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<ErrorCubit, CubitStates>(
              builder: (context, state) => ErrorText(
                showError: context.read<ErrorCubit>().errors.contains(
                  Errors.PASSWORD_ERROR,
                ),
                text: getError[Errors.PASSWORD_ERROR],
              ),
            ),
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: TextButton(
                onPressed: () {
                  Routes.errorRoute.moveTo();
                },
                child: Text(
                  AppStrings.forgetPasswordQuestionMark,
                  style: getRegularTextStyle(color: AppColors.accentColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
