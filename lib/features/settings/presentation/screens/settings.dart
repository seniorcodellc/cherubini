import 'package:cherubini/features/languages/presentation/manager/language_cubit.dart';
import 'package:cherubini/features/settings/presentation/widgets/settings_user_details_list.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../../../../exports.dart';
import '../widgets/settings_header.dart';
import '../widgets/settings_log_out.dart';
import '../widgets/settings_notifications_list.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      showNavBar: true,
      //appBar: CustomAppbar(title: AppStrings.settings),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                30.vs,
                SettingsHeader(),
                24.vs,
                SettingsUserDetailsList(),
                24.vs,
                Padding(
                  padding: getPadding(horizontal: 16.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      AppStrings.notifications.trans,
                      style: getBoldTextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                ),
                16.vs,
                BlocBuilder<LanguageCubit, CubitStates>(
                  builder: (context, state) {
                    return SettingsNotificationsList();
                  },
                ),
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
