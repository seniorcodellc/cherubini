import 'package:cherubini/exports.dart';

import 'horizontal_custom_divider.dart';

class LogInHaveNoAccountRow extends StatelessWidget {
  const LogInHaveNoAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HorizontalCustomDivider(),
        8.hs,
        Text(
          AppStrings.haveNoAccount.trans,
          style: getRegularTextStyle(color: AppColors.subTitleColor),
        ),
        8.hs,
        HorizontalCustomDivider(),
      ],
    );
  }
}
