import '../../../../exports.dart';

class CustomLoginSignupTextfieldText extends StatelessWidget {
  const CustomLoginSignupTextfieldText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: getRegularTextStyle(color: AppColors.primaryColor),
    );
  }
}
