import 'package:cherubini/features/tech_dashborad/data/statics/tech_dashboard_static.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_last_scan_item.dart';

import '../../../../core/history/data/models/history_response_model.dart';
import '../../../../core/history/presentation/manager/history_cubit.dart';
import '../../../../core/widgets/shared_dashboard_last_scan_text_widget.dart';
import '../../../../exports.dart';

class TechDashboardScanList extends StatelessWidget {
  const TechDashboardScanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: getPadding(bottom: 8.0.h, horizontal: 16.0.w),
          child: SharedDashboardLastScanTextWidget(),
        ),
        Expanded(
          child: GenericListView<HistoryCubit, HistoryModel>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemWidget: (index, items, item) => TechLastScanItem(history: item),
            separatorWidget: 8.vs,
            shimmerWidget: (index) => SizedBox.shrink(),
          ),
          /*          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DashboardStatics.scanList.length,
            itemBuilder: (context, index) {
              final model = DashboardStatics.scanList[index];
              return LastScanItem(model: model);
            },
          ),*/
        ),
      ],
    );
  }
}
