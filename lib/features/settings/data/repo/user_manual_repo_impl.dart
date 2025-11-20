import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/helpers/network_helper.dart';
import 'package:cherubini/config/network/model/response_model.dart';

import 'package:dartz/dartz.dart';

import '../../domain/repo/user_manual_repo.dart';
import '../data_sources/user_manual_remote_data_source.dart';

class UserManualRepoImpl extends UserManualRepo{
 final  UserManualRemoteDataSource userManualRemoteDataSource;
  UserManualRepoImpl({required this.userManualRemoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> getData({num? id, query}) =>executeImpl(() => userManualRemoteDataSource.getData(),);
}