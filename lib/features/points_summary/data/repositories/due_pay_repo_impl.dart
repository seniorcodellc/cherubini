import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/helpers/network_helper.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/due_pay_repo.dart';
import '../data_sources/due_pay_remote_data_source.dart';

class DuePayRepoImpl extends DuePayRepo{
  DuePayRemoteDataSource duePayRemoteDataSource;
  DuePayRepoImpl({required this.duePayRemoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> payToTechnician(num dueId, List<num> technicians) =>executeImpl(() => duePayRemoteDataSource.payToTechnician(dueId, technicians),);
}