import 'package:cherubini/core/widgets/settings_header.dart';
import 'package:cherubini/core/widgets/settings_log_out.dart';
import 'package:cherubini/core/widgets/settings_notifications_list.dart';
import 'package:cherubini/core/widgets/settings_user_details_list.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../core/widgets/shared_notifications_text.dart';
import '../../../../exports.dart';

class MerchantSettings extends StatelessWidget {
  const MerchantSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      //appBar: CustomAppbar(title: AppStrings.settings),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                30.vs,
                SettingsHeader(
                  title: AppStrings.merchantCompanyName,
                  name: AppStrings.merchantName,
                ),
                24.vs,
                SettingsUserDetailsList(),
                24.vs,
                SharedNotificationsText(),
                16.vs,
                SettingsNotificationsList(),
                24.vs,
                SettingsLogOut(),
                30.vs,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
