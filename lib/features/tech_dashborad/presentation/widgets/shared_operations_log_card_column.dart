import '../../../../exports.dart';

class SharedOperationsLogCardColumn extends StatelessWidget {
  const SharedOperationsLogCardColumn({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: getRegularTextStyle(fontSize: 16, color: AppColors.white),
          ),
          Text(
            subTitle,
            style: getSemiBoldTextStyle(fontSize: 24, color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
