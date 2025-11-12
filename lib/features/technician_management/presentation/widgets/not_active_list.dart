import 'package:cherubini/exports.dart';
import '../../data/models/technician_response_model/technician_response_model.dart';
import '../manager/technician_cubit.dart';
import 'not_active_tech_item.dart';

class NotActiveList extends StatelessWidget {
  const NotActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericListView<TechnicianCubit, TechnicianModel>(
      itemWidget: (index, items, item) => NotActiveTechItem(model: item,),
      separatorWidget: 16.vs,
      shimmerWidget: (index) => SizedBox.shrink(),
    );

    // return ListView.builder(
    //   key: const ValueKey(false),
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: ManagementStatics.techNotActiveList.length,
    //   itemBuilder: (context, index) {
    //     final model = ManagementStatics.techNotActiveList[index];
    //     return NotActiveTechItem(model: model);
    //   },
    // );
  }
}
