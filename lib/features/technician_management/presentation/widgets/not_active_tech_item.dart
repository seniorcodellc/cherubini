import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import '../../data/models/technician_response_model/technician_response_model.dart';
import 'active_info_row.dart';
import 'custom_info_widget.dart';
import 'not_active_profile_widget.dart';


class NotActiveTechItem extends StatelessWidget {
  const NotActiveTechItem({super.key, required this.model});
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
            NotActiveProfileWidget(model: model, statusIcon: AppAssets.notActive,),
            24.vs,
            CustomInfoWidget(asset: AppAssets.phone, info: ""),
            10.vs,
            CustomInfoWidget(asset: AppAssets.email, info: ""),
            20.vs,
            Padding(padding: getPadding(horizontal: 16.0.w), child: HLine(),),
            ActiveInfoRow(model: model),
            Padding(padding: getPadding(horizontal: 16.0.w), child: HLine(),),
            Padding(
              padding: getPadding(horizontal: 18.0.w,vertical: 16.0.h),
              child: CustomButton(text: AppStrings.reActiveTech, onPressed: (){},backgroundColor: AppColors.primaryColor,borderColor: AppColors.primaryColor,),

            ),
          ],
        ),
      ),
    );
  }
}
