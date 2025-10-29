import '../../../../exports.dart';

class SignUpTraderInstruction extends StatelessWidget {
  const SignUpTraderInstruction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "بالتسجيل، أنت توافق على الشروط والأحكام",
              style: getRegularTextStyle(color: AppColors.subTitleColor),
            ),
          ),
          Text(
            "وسياسة الخصوصية",
            style: getRegularTextStyle(color: AppColors.subTitleColor),
          ),
        ],
      ),
    );
  }
}
