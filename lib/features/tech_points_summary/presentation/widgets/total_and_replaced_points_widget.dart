import 'package:cherubini/features/core/widgets/shared_text_column.dart';

import '../../../../exports.dart';

class TotalAndReplacedPointsWidget extends StatelessWidget {
  const TotalAndReplacedPointsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SharedTextColumn(title: AppStrings.total, subTitle: "12,450"),
          VerticalDivider(color: AppColors.white, thickness: 1.w, width: 50.w),
          SharedTextColumn(title: AppStrings.replaced, subTitle: "3,200"),
        ],
      ),
    );
  }
}
