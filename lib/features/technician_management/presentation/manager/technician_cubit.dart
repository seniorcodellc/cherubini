import 'package:cherubini/exports.dart';

import '../../data/models/technician_response_model/technician_response_model.dart';
import '../../domain/use_cases/technician_use_case.dart';

class TechnicianCubit extends CubitListView<TechnicianModel> {
  TechnicianUseCase technicianUseCase;
  List<TechnicianModel> activeTechnicians = [];
  List<TechnicianModel> pendingTechnicians = [];
  TechnicianCubit({required this.technicianUseCase})
    : super(listUseCases: technicianUseCase);

  filterTechnicians() async {
    await getList();
    pendingTechnicians = list.where((element) => element.status == 0).toList();
    activeTechnicians = list.where((element) => element.status == 1).toList();
  }
}
