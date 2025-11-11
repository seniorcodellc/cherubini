import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/technician_management/presentation/widgets/profile_widget.dart';

import '../../data/models/technician_response_model/technician_response_model.dart';
import 'active_info_row.dart';
import 'custom_info_widget.dart';


class ActiveTechItem extends StatelessWidget {
  const ActiveTechItem({super.key, required this.item});
  final TechnicianModel item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 14.0.w, vertical: 10.h),
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
            ActiveProfileWidget(model: item),
            24.vs,
            CustomInfoWidget(asset: AppAssets.phone, info: ""),
            10.vs,
            CustomInfoWidget(asset: AppAssets.email, info: ""),
            20.vs,
            Padding(
              padding: getPadding(horizontal: 16.0.w),
              child: HLine(),
            ),
            ActiveInfoRow(model: item),
          ],
        ),
      ),
    );
  }
}
