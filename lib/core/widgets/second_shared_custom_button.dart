import '../../exports.dart';

class SecondSharedCustomButton extends StatelessWidget {
  const SecondSharedCustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      borderColor: AppColors.mutedBlue,
      textColor: AppColors.primaryColor,
      backgroundColor: AppColors.white,
      text: text,
      onPressed: () {
        Routes.loginRoute.moveTo();
      },
    );
  }
}
