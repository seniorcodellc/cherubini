import 'package:cherubini/config/list_generic/presentation/manager/cubit_list_view.dart';
import 'package:cherubini/features/merchant_points_summary/data/models/cash_reward_response_model.dart';
import 'package:cherubini/features/merchant_points_summary/domain/use_cases/cash_reward_use_cases.dart';

class DuesCubit extends CubitListView<CashRewardModel> {
  CashRewardUseCases cashRewardUseCases;

  DuesCubit({required this.cashRewardUseCases})
    : super(listUseCases: cashRewardUseCases);
}
