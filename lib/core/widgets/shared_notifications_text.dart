import '../../exports.dart';

class SharedNotificationsText extends StatelessWidget {
  const SharedNotificationsText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.w),
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.notifications,
          style: getBoldTextStyle(fontSize: 16, color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
