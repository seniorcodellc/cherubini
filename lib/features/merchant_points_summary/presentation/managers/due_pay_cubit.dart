import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_points_summary/domain/use_cases/due_pay_use_cases.dart';

class DuePayCubit extends Cubit<CubitStates> {
  List<num> techniciansIds = [];
  int count = 0;

  DuePayUseCases duePayUseCases;
  DuePayCubit({required this.duePayUseCases}) : super(InitialState());
  payToTechnician(num id) {
    if (techniciansIds.contains(id).isFalse) {
      techniciansIds.add(id);
      count++;
    } else {
      techniciansIds.remove(id);
      count--;
    }
    emit(ChangeState());
  }

  pay(num dueId) => executeWithDialog<dynamic>(
    either: duePayUseCases.payToTechnician(dueId, techniciansIds),
    startingMessage: AppStrings.payDues,
    onSuccess: (data) {},
  );
}
