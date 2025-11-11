import 'package:cherubini/exports.dart';

class SignUpElevatedButtons extends StatelessWidget {
  const SignUpElevatedButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomElevatedButton(
          onPressed: () {
            Routes.registerTraderRoute.moveTo();
          },
          text: AppStrings.signUpAsMerchant,
        ),
        CustomElevatedButton(
          onPressed: () {
            Routes.registerTechRoute.moveTo();
          },
          text: AppStrings.signUpAsTech,
        ),
      ],
    );
  }
}
