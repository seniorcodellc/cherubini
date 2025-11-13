import 'package:cherubini/exports.dart';
import 'package:cherubini/features/tech_dashborad/data/models/tech_scan_model.dart';
import 'package:cherubini/core/widgets/scan_blue_circle.dart';
import 'package:cherubini/core/widgets/shared_small_white_container.dart';

import '../../../../core/history/data/models/history_response_model.dart';

class TechLastScanItem extends StatelessWidget {
  const TechLastScanItem({super.key, required this.history});
  final HistoryModel history;

  @override
  Widget build(BuildContext context) {
    return SharedSmallWhiteContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ScanBlueCircle(),
          16.hs,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                history.detail![0].productName.toString(),
                style: getRegularTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                DateFormat(
                  'dd/MM/yyyy',
                ).format(DateTime.parse(history.date!)).toString(),
                style: getRegularTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.grayHint,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                '${history.points} نقطه',
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.accentColor,
                ),
              ),
              Text(
                '5 منتجات',
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.subTitleColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
