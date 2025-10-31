import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/scan_body.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: "مسح الباركود "),
      child: ScanBody(),
    );
  }
}
