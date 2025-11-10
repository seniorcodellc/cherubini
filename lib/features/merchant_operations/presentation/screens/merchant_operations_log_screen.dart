import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../tech_dashborad/presentation/widgets/operations_log_header.dart';
import '../widgets/merchant_operation_logs_list.dart';
import '../../../../core/widgets/custom_background.dart';

class MerchantOperationsLogScreen extends StatelessWidget {
  const MerchantOperationsLogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.operationsHistoryAr),
  child: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: getPadding(vertical: 30.h),
            child: Column(
              children: [OperationsLogHeader(), 24.vs, MerchantOperationLogsList()],
            ),
          ),
        ),
      ],
    ),
);
  }
}

