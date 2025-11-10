import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/data/models/technician_response_model/technician_response_model.dart';
import '../../data/models/tech_active_model.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key, required this.model, required this.isActive});
  final TechnicianModel model;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.0.w, top: 16.0.h),
      child: Row(
        children: [
          CustomSVGImage(
            asset: isActive
                ? AppAssets.activeProfile
                : AppAssets.waitingProfile,
            height: 60.h,
            width: 60.w,
          ),
          12.hs,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name!,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              8.vs,
              isActive
                  ? Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20.0.r),
                        border: Border.all(color: AppColors.green, width: 1.5),
                      ),
                      child: Padding(
                        padding: getPadding(
                          vertical: 2.0.h,
                          horizontal: 16.0.w,
                        ),
                        child: Row(
                          children: [
                            CustomSVGImage(
                              asset: AppAssets.check,
                              color: AppColors.green,
                              height: 18.0.h,
                              width: 18.0.w,
                            ),
                            8.hs,
                            Text(
                              model.status,
                              style: getRegularTextStyle(
                                fontSize: 15.sp,
                                color: AppColors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(20.0.r),
                        border: Border.all(
                          color: AppColors.errorColor,
                          width: 1.5,
                        ),
                      ),
                      child: Padding(
                        padding: getPadding(
                          vertical: 2.0.h,
                          horizontal: 16.0.w,
                        ),
                        child: Row(
                          children: [
                            CustomSVGImage(
                              asset: AppAssets.check,
                              color: AppColors.errorColor,
                              height: 18.0.h,
                              width: 18.0.w,
                            ),
                            8.hs,
                            Text(
                              model.status,
                              style: getRegularTextStyle(
                                fontSize: 14.sp,
                                color: AppColors.errorColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
