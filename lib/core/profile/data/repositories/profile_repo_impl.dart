import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../config/helpers/network_helper.dart';
import '../../../../features/authentication/data/model/response_model/login_response_model.dart';
import '../data_sources/profile_remote_data_source.dart';

class ProfileRepoImpl extends ProfileRepo {
  ProfileRemoteDataSource profileRemoteDataSource;
  ProfileRepoImpl({required this.profileRemoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> profile() => executeImpl<UserModel>(
    () => profileRemoteDataSource.profile(),
    // localWrite: (data) => authLocalDataSource.cacheUser(user: data),
  );
}

abstract class ProfileRepo {
  Future<Either<Failure, ResponseModel>> profile();
}
