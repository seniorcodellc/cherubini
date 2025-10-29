import 'package:cherubini/exports.dart';

import 'horizontal_custom_divider.dart';

class LogInHaveNoAccountRow extends StatelessWidget {
  const LogInHaveNoAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HorizontalCustomDivider(),
        17.hs,
        Text(
          "ليس لديك حساب؟",
          style: getRegularTextStyle(color: AppColors.subTitleColor),
        ),
        17.hs,
        HorizontalCustomDivider(),
      ],
    );
  }
}
