import 'package:cherubini/exports.dart';
import '../repositories/technician_repo.dart';

class TechnicianUseCase extends ListUseCases {
  TechnicianRepo technicianRepo;

  TechnicianUseCase({required this.technicianRepo})
      : super(listRepo: technicianRepo);

  Future<Either<Failure, ResponseModel>> activateOrReject(num id,num status) async => technicianRepo.activateOrReject(id,status);

  Future<Either<Failure, ResponseModel>> suspend(num id,) async => technicianRepo.suspend(id);
  Future<Either<Failure, ResponseModel>> reactivate(num id,) async =>
      technicianRepo.reactive(id);
}
