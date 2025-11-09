import '../../data/repositories/home_repo_impl.dart';
import 'package:cherubini/exports.dart';

class ProfileUseCases {
  ProfileUseCases({required this.homeRepo});
  HomeRepoImpl homeRepo;
  Future<Either<Failure, ResponseModel>> profile() async => homeRepo.profile();
}
