import '../../exports.dart';

class SharedDashboardLastScanTextWidget extends StatelessWidget {
  const SharedDashboardLastScanTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'أخر عمليات المسح ',
          style: getBoldTextStyle(
            fontSize: 16.sp,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          'عرض الكل ',
          style: getRegularTextStyle(
            fontSize: 14.sp,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
