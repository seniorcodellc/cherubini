import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/settings_header.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/settings_log_out.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/settings_notifications_list.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/settings_user_details_list.dart';

import '../../../../exports.dart';

class TechSettingsScreen extends StatelessWidget {
  const TechSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      appBar: CustomAppbar(title: "الإعدادت"),
      child: Padding(
        padding: getPadding(vertical: 30.h),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SettingsHeader(),
            24.vs,
            SettingsUserDetailsList(),
            24.vs,
            Padding(
              padding: getPadding(horizontal: 16.w),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "الإشعارات",
                  style: getBoldTextStyle(
                    fontSize: 16,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ),
            16.vs,
            SettingsNotificationsList(),
            24.vs,
            SettingsLogOut(),
          ],
        ),
      ),
    );
  }
}
