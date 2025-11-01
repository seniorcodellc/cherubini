import 'package:cherubini/core/widgets/custom_scan_button.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/presentation/widgets/shared_scan_container.dart';

class ScanBody extends StatelessWidget {
  const ScanBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        150.vs,
       SharedScanContainer(asset: AppAssets.cameraScan,),
        150.vs,
        Padding(
          padding: getPadding(horizontal: 16.0.w),
          child: CustomScanButton(text: 'ابدا المسح', icon: AppAssets.scan),
        )
      ],
    );
  }
}
