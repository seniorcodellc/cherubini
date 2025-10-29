import 'package:cherubini/features/tech_dashborad/data/repositories/tech_dashboard_statics.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_last_scan_item.dart';

import '../../../../exports.dart';

class TechDashboardScanList extends StatelessWidget {
  const TechDashboardScanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(TechDashboardStatics.techScanList.length, (
        index,
      ) {
        final model = TechDashboardStatics.techScanList[index];
        return TechLastScanItem(model: model);
      }),
    );
  }
}
