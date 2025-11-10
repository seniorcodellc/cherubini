import 'package:cherubini/exports.dart';

import '../../../tech_dashborad/data/statics/operations_log_static.dart';
import 'merchant_operations_log_list_item.dart';

class MerchantOperationLogsList extends StatelessWidget {
  const MerchantOperationLogsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(OperationsLogStatic.operationsLogList.length, (
          index,
          ) {
        final model = OperationsLogStatic.operationsLogList[index];
        return MerchantOperationsLogListItem(model: model);
      }),
    );
  }
}
