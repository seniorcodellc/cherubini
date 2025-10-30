import 'package:cherubini/exports.dart';

import '../../data/statics/static.dart';
import 'active_tech_item.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: const ValueKey(true),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ManagementStatics.techActiveList.length,
      itemBuilder: (context, index) {
        final model = ManagementStatics.techActiveList[index];
        return ActiveTechItem(model: model, isActive: true);
      },
    );
  }
}
