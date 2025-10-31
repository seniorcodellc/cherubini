import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/presentation/widgets/shared_scan_container.dart';

import 'bar_code_details.dart';

class SuccessScanBody extends StatelessWidget {
  const SuccessScanBody({super.key, required this.asset, required this.isSuccess});
final String asset;
final bool isSuccess;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: getPadding(vertical: 35.0.h),
          child: SharedScanContainer(asset: asset,),
        ),
        BarCodeDetails(isSuccess: isSuccess,),
        isSuccess?60.vs:24.vs,
        Padding(
          padding: getPadding(horizontal: 16.0.w),
          child: CustomButton(text: 'مسح باركود آخر',textColor: AppColors.primaryColor, onPressed: (){Routes.errorScanRoute.moveTo();},height: 58.h,backgroundColor: AppColors.whiteLight,borderColor: AppColors.borderColor3,),
        )
      ],
    );
  }
}
