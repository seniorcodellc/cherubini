import 'package:cherubini/features/tech_dashborad/data/statics/tech_settings_details_static.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/settings_user_details_list_item.dart';

import '../../../../config/constants/localization_constants.dart';
import '../../../../exports.dart';
import '../../../languages/presentation/manager/language_cubit.dart';
import '../../../languages/presentation/widgets/custom_language_dialog.dart';

class SettingsUserDetailsList extends StatelessWidget {
  const SettingsUserDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(settingList.length, (index) {
        final model = settingList[index];
        return GestureDetector(
          onTap: () {
            if (settingList[index].name == AppStrings.language) {
              showCustomDialog(
                contentPadding: getPadding(horizontal: 0, vertical: 20.h),
                child: CustomLanguageDialog(
                  onChange: (isEnglish) {
                    if (isEnglish.isTrue) {
                      context.setLocale(AppLocalizationsConstants().enLocale);
                      context.read<LanguageCubit>().toEnglish();
                    } else {
                      context.setLocale(AppLocalizationsConstants().arLocale);

                      context.read<LanguageCubit>().toArabic();
                    }
                  },
                ),
              );
            } else if (settingList[index].name == AppStrings.editProfile) {
              Routes.editProfile.moveTo();
            } else if (settingList[index].name == AppStrings.changePassword) {
              Routes.changePasswordRoute.moveTo();
            }
          },
          child: Padding(
            padding: getPadding(bottom: 16.h),
            child: Container(
              width: 343.w,
              height: 62.h,
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
              child: SettingsUserDetailsListItem(model: model),
            ),
          ),
        );
      }),
    );
  }
}
