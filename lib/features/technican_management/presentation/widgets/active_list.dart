import 'package:cherubini/exports.dart';

import '../../data/models/technician_response_model/technician_response_model.dart';
import '../manager/technician_cubit.dart';
import 'tech_item.dart';

class ActiveList extends StatelessWidget {
  const ActiveList({super.key});

  @override
  Widget build(BuildContext context) {
    return GenericListView<TechnicianCubit, TechnicianModel>(
      itemWidget: (index, items, item) =>
          TechItemWidget(item: item, ),
      separatorWidget: 16.vs,
      shimmerWidget: (index) => SizedBox.shrink(),
    );


  }
}
