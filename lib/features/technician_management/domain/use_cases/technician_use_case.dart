import 'package:cherubini/exports.dart';
import '../repositories/technician_repo.dart';

class TechnicianUseCase extends ListUseCases {
  TechnicianRepo technicianRepo;
  TechnicianUseCase({required this.technicianRepo})
    : super(listRepo: technicianRepo);
  Future<Future<Either<Failure, ResponseModel>>> getApproved({
    num? id,
    dynamic query,
  }) async => technicianRepo.getList(id: id, query: query);
  Future<Either<Failure, ResponseModel>> getSuspend({num? id, dynamic query}) =>
      technicianRepo.getList(id: id, query: query);
  Future<Either<Failure, ResponseModel>> getUnSuspend({
    num? id,
    dynamic query,
  }) => technicianRepo.getList(id: id, query: query);
}
