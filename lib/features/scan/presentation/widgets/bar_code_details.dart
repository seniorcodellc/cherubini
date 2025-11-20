import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/data/models/qr_code_model.dart';
import 'package:cherubini/features/scan/presentation/widgets/bar_code_row.dart';

class QrCodeDetailsWidget extends StatelessWidget {
  final QrCodeModel qrCodeModel;
  const QrCodeDetailsWidget({super.key, required this.qrCodeModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getPadding(horizontal: 16.0.w, bottom: 24.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          BarCodeRow(
            title: AppStrings.serialNumber.trans,
            value: qrCodeModel.serialCode,
          ),
          HLine(width: 311.w),

          Container(
            margin: getPadding(horizontal: 16.0.w, vertical: 12.0.h),
            width: width,
            decoration: BoxDecoration(
              color: qrCodeModel.status.isTrue
                  ? AppColors.mutedBlue
                  : AppColors.lightOrange,
              borderRadius: BorderRadius.circular(20.0.r),
              border: Border.all(
                width: 1,
                color: qrCodeModel.status.isTrue
                    ? AppColors.mutedBlue
                    : AppColors.borderColor4,
              ),
            ),
            child: Padding(
              padding: getPadding(all: 14.0.h),
              child: Text(
                qrCodeModel.message.validate.trans,
                textAlign: TextAlign.right,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: qrCodeModel.status.isTrue
                      ? AppColors.black
                      : AppColors.orange2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
