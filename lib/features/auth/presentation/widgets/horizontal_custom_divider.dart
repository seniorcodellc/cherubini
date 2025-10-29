import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_divider.dart';

class HorizontalCustomDivider extends StatelessWidget {
  const HorizontalCustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomDivider(width: 106, height: 0.5, color: AppColors.accentColor);
  }
}
