import 'package:cherubini/core/profile/data/models/profile_response_model.dart';
import 'package:cherubini/core/profile/presentation/manager/profile_cubit.dart';

import '../../../../exports.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.w),
      child: Container(
        width: 343.w,
        height: 80.h,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 2.r,
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 0.r,
              blurRadius: 2.r,
              offset: Offset(0, 1.h),
            ),
          ],
        ),
        child: Padding(
          padding: getPadding(horizontal: 16.w, vertical: 8.h),
          child: Row(
            children: [
              Container(
                width: 56.w,
                height: 56.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56.r),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.gradientColorStart,
                      AppColors.gradientColorEnd,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: CustomSVGImage(
                  asset: AppAssets.profile,
                  fit: BoxFit.none,
                  color: AppColors.white,
                ),
              ),
              16.hs,
              BlocBuilder<ProfileCubit, CubitStates>(
                builder: (context, state) => state is LoadedState<ProfileModel>?

                    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.data.name.validate,
                      style: getRegularTextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    state.data.companyName.isNotNullOrEmpty?
                    Text(
                      state.data.companyName.validate,
                      style: getRegularTextStyle(
                        fontSize: 16,
                        color: AppColors.subTitleColor,
                      ),
                    ):SizedBox.shrink(),
                  ],
                ):Column(
                  children: [
                    SizedBox(height: 20.h,width: 20.w,
                    child: CircularProgressIndicator(),
                    ),
                    SizedBox(height: 20.h,width: 20.w,
                    child: CircularProgressIndicator(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
