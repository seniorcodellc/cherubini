import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/shared_notifications_text.dart';
import 'package:cherubini/core/widgets/settings_header.dart';
import 'package:cherubini/core/widgets/settings_log_out.dart';
import 'package:cherubini/core/widgets/settings_notifications_list.dart';
import 'package:cherubini/core/widgets/settings_user_details_list.dart';

import '../../../../exports.dart';

class TechSettingsScreen extends StatelessWidget {
  const TechSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                30.vs,
                SettingsHeader(
                  title: AppStrings.techDescription,
                  name: AppStrings.techName,
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
