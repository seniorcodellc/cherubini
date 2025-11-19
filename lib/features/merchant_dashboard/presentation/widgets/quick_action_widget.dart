import 'package:cherubini/exports.dart';
import 'package:cherubini/features/authentication/presentation/managers/auth_cubit.dart';
import '../../data/models/quick_action_model.dart';
import '../../data/statics/statics.dart';

class QuickActionWidget extends StatelessWidget {
  final List<QuickActionModel> quickActionList;

  const QuickActionWidget({required this.quickActionList, super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: getPadding(horizontal: 16.0.w, vertical: 8.0.h),
          child: Text(
            AppStrings.quickActions.trans,
            style: getBoldTextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 135.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: getPadding(horizontal: 8.w),
            itemCount: quickActionList.length,
            separatorBuilder: (context, index) => 10.hs,
            itemBuilder: (context, index) {
              final model = quickActionList[index];
              return GestureDetector(
                onTap: model.onTap,
                child: Padding(
                  padding: getPadding(horizontal: 4.w),
                  child: Container(
                    height: 138.h,
                    width: quickActionList == technicianActionsList
                        ? 164.w
                        : 60.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Padding(
                      padding: getPadding(vertical: 16.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 56.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0.r),
                              gradient: LinearGradient(
                                colors: [
                                  AppColors.gradientColorStart,
                                  AppColors.gradientColorEnd,
                                ],
                                begin: AlignmentGeometry.bottomLeft,
                                end: AlignmentGeometry.topRight,
                              ),
                            ),
                            child: CustomSVGImage(
                              asset: model.iconPath,
                              fit: BoxFit.none,
                            ),
                          ),
                          12.vs,
                          Text(
                            model.title.trans,
                            style: getRegularTextStyle(
                              fontSize: 12.sp,
                              color: AppColors.primaryColor,
                            ),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
