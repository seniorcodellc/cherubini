import '../../data/repositories/profile_repo_impl.dart';
import 'package:cherubini/exports.dart';

class ProfileUseCases {
  ProfileUseCases({required this.profileRepo});
  ProfileRepoImpl profileRepo;
  Future<Either<Failure, ResponseModel>> profile() async =>
      profileRepo.profile();
}
