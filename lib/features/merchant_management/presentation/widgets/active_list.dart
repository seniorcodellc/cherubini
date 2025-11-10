import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/data/models/technician_response_model/technician_response_model.dart';
import 'package:cherubini/features/merchant_management/presentation/manager/technician_cubit.dart';
import 'active_tech_item.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericListView<TechnicianCubit, TechnicianModel>(
      itemWidget: (item, items, index) =>
          ActiveTechItem(item: item, isActive: true),
      separatorWidget: 16.vs,
      shimmerWidget: (index) => SizedBox.shrink(),
    );

    // ListView.builder(
    //   key: const ValueKey(true),
    //   shrinkWrap: true,
    //   physics: const NeverScrollableScrollPhysics(),
    //   itemCount: ManagementStatics.techActiveList.length,
    //   itemBuilder: (context, index) {
    //     final model = ManagementStatics.techActiveList[index];
    //     return ActiveTechItem(model: model, isActive: true);
    //   },
    // );
  }
}
