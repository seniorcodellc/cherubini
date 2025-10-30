import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/merchant_management_body.dart';

class MerchantManagementScreen extends StatelessWidget {
  const MerchantManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        backgroundColor: AppColors.bgColor,
        appBar: CustomAppbar(title: "إدارة الفنيين "),
        child: MerchantManagementBody(),
    );
  }
}
