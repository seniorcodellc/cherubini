import 'package:cherubini/exports.dart';

import 'horizontal_custom_divider.dart';

class LogInHaveNoAccountRow extends StatelessWidget {
  const LogInHaveNoAccountRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.w),
      child: Row(
        children: [
          HorizontalCustomDivider(),
          16.hs,
          Text(
            AppStrings.haveNoAccount.trans,
            style: getRegularTextStyle(color: AppColors.subTitleColor),
          ),
          16.hs,
          HorizontalCustomDivider(),
        ],
      ),
    );
  }
}
