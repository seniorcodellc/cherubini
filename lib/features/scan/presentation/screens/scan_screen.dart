import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/shared_scan_container.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title:AppStrings.scanCode),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          150.vs,
          SharedScanContainer(asset: AppAssets.cameraScan,),
          150.vs,
          Padding(
            padding: getPadding(horizontal: 16.0.w),
            child: CustomScanButton(text: AppStrings.startScan, icon: AppAssets.scan),
          )
        ],
      ),
    );
  }
}
