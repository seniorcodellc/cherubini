import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/data/models/technician_response_model/technician_response_model.dart';
import 'package:cherubini/features/merchant_management/presentation/widgets/show_details_button.dart';

import '../../../../core/widgets/h_line.dart';

class ActiveInfoRow extends StatelessWidget {
  const ActiveInfoRow({super.key, required this.model});
  final TechnicianModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 8.0.w, bottom: 14.h, top: 6.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(
                model.points as String,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.accentColor,
                ),
              ),
              8.vs,
              Text(
                AppStrings.point,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.subTitleColor,
                ),
              ),
            ],
          ),
          20.hs,
          VLine(height: 50.0.h),
          Column(
            children: [
              Text(
                "",
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.accentColor,
                ),
              ),
              8.vs,
              Text(
                AppStrings.scanOperation,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.subTitleColor,
                ),
              ),
            ],
          ),
          VLine(height: 50.0.h),
          ShowDetailsButton(),
        ],
      ),
    );
  }
}
