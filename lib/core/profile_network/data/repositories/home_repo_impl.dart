import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:dartz/dartz.dart';
import '../../../../config/helpers/network_helper.dart';
import '../../../../features/authentication/data/model/response_model/login_response_model.dart';
import '../data_sources/remote_data_source.dart';

class HomeRepoImpl extends HomeRepo {
  RemoteDataSource remoteDataSource;
  HomeRepoImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> profile() {
    executeImpl<UserModel>(
      () => remoteDataSource.profile(),
      // localWrite: (data) => authLocalDataSource.cacheUser(user: data),
    );
  }

  // @override
  // Future<Either<Failure, ResponseModel>> profile() {
  //   remoteDataSource.profile();
  // }
}

abstract class HomeRepo {
  Future<Either<Failure, ResponseModel>> profile();
}
