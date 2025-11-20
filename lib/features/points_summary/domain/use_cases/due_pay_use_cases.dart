import 'package:cherubini/exports.dart';

import '../repositories/due_pay_repo.dart';
class DuePayUseCases {
  DuePayRepo duePayRepo;
  DuePayUseCases({required this.duePayRepo});
  Future<Either<Failure,ResponseModel>> payToTechnician(num dueId, List<num> technicians) =>duePayRepo.payToTechnician(dueId, technicians);
}