import 'package:cherubini/features/merchant_points_summary/domain/repositories/due_pay_repo.dart';
import 'package:cherubini/exports.dart';
class DuePayUseCases {
  DuePayRepo duePayRepo;
  DuePayUseCases({required this.duePayRepo});
  Future<Either<Failure,ResponseModel>> payToTechnician(num dueId, List<num> technicians) =>duePayRepo.payToTechnician(dueId, technicians);
}