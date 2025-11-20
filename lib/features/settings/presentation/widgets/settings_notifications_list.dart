
import '../../../../exports.dart';
import 'notifications_list_item.dart';

class SettingsNotificationsList extends StatelessWidget {
  SettingsNotificationsList({super.key});
  List<String> notifications = [
    AppStrings.pointsNotifications,
    AppStrings.deleteNotifications,
    AppStrings.systemNotifications,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 154.h,
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
        padding: getPadding(vertical: 10.h),
        child: Column(
          children: [
            NotificationsListItem(text: notifications[0]),
            NotificationsListItem(text: notifications[1]),
            NotificationsListItem(text: notifications[2]),
          ],
        ),
      ),
    );
  }
}
