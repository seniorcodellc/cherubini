import 'package:cherubini/exports.dart';

import '../../data/statics/static.dart';
import 'active_tech_item.dart';

class WaitingList extends StatelessWidget {
  const WaitingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const ValueKey(false),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ManagementStatics.techWaitingList.length,
      itemBuilder: (context, index) {
        final model = ManagementStatics.techWaitingList[index];
        return ActiveTechItem(model: model, isActive: false);
      },
    );
  }
}
