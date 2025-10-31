import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/success_scan_body.dart';

class SuccessScanScreen extends StatelessWidget {
  const SuccessScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: "مسح الباركود "),
      child: SuccessScanBody(asset: AppAssets.successScan, isSuccess: true,),
    );
  }
}
