import 'package:cherubini/features/tech_dashborad/presentation/widgets/shared_text_column.dart';
import '../../../../core/profile/data/models/profile_response_model.dart';
import '../../../../exports.dart';

class SummaryPointsCard extends StatelessWidget {
  final ProfileModel? profile;
  const SummaryPointsCard({this.profile,super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.w, top: 32.h),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          gradient: LinearGradient(
            colors: [AppColors.gradientColorStart, AppColors.gradientColorEnd],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            20.vs,
            Text(
              AppStrings.availablePoints.trans,
              style: getRegularTextStyle(color: AppColors.white, fontSize: 16),
            ),
            10.vs,
            Text(
              profile!.balance.validate.toString(),
              style: getSemiBoldTextStyle(fontSize: 24, color: AppColors.white),
            ),
            11.vs,
            SizedBox(
              height: 65.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SharedTextColumn(text: AppStrings.totalAr,num:profile?.totalPoints.validate.toString()),
                  VerticalDivider(color: AppColors.white, thickness: 1.w, width: 50.w),
                  SharedTextColumn(text: AppStrings.replaced, num:profile?.pointDelevery.validate.toString()),
                ],
              ),
            ),
            23.vs,
          ],
        ),
      ),
    );
  }
}
