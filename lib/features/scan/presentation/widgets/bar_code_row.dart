// core/widgets/bar_code_row.dart
import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';

class BarCodeRow extends StatelessWidget {
  final String title;
  final String value;

  const BarCodeRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.0.w, vertical: 12.0.h),
      child: Column(
        children: [
          Text(
            title,
            style: getRegularTextStyle(
              fontSize: 16.sp,
              color: AppColors.subTitleColor,
            ),
          ),
          HLine(),
          Text(
            value,
            textAlign: TextAlign.left,

            style: getRegularTextStyle(
              fontSize: 16.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
