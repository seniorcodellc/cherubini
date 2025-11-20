import 'package:cherubini/config/list_generic/domain/use_cases/list_use_cases.dart';
import 'package:cherubini/core/history/domain/repositories/histroy_repo.dart';

import '../repositories/cash_reward_repo.dart';

class CashRewardUseCases extends ListUseCases {
  CashRewardRepo cashRewardRepo;
  CashRewardUseCases({required this.cashRewardRepo})
    : super(listRepo: cashRewardRepo);
}
