import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_appbar.dart';

class MerchantManagementScreen extends StatelessWidget {
  const MerchantManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackground(
        backgroundColor: AppColors.bgColor,
        appBar: CustomAppbar(title: "إدارة الفنيين "),
        child: Padding(
            padding: getPadding(horizontal: 16.0.w),
            child: Column(
              children: [

              ],
            ),
        )
    );
  }
}
