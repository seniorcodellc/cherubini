import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/technician_management/presentation/widgets/question_merchant_widget.dart';
import 'package:cherubini/features/technician_management/presentation/widgets/waiting_buttons.dart';
import '../../data/models/technician_response_model/technician_response_model.dart';
import 'custom_info_widget.dart';
import 'not_active_profile_widget.dart';


class WaitingTechItem extends StatelessWidget {
  const WaitingTechItem({super.key, required this.model});
  final TechnicianModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 14.0.w, vertical: 12.h),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 1,
              blurRadius: 4,
            ),
          ],
        ),
        child: Column(
          children: [
            NotActiveProfileWidget(model: model, statusIcon: AppAssets.check,),
            24.vs,
            CustomInfoWidget(asset: AppAssets.phone, info: ""),
            10.vs,
            CustomInfoWidget(asset: AppAssets.email, info: ""),
            12.vs,
            Padding(
              padding: getPadding(horizontal: 16.0.w),
              child: Align(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  "",
                  style: getRegularTextStyle(
                    fontSize: 14.sp,
                    color: AppColors.subTitleColor,
                  ),
                ),
              ),
            ),
            16.vs,
            QuestionMerchantWidget(),
            12.vs,
            Padding(
              padding: getPadding(horizontal: 16.0.w),
              child: HLine(),
            ),
            WaitingButtons(),
          ],
        ),
      ),
    );
  }
}
