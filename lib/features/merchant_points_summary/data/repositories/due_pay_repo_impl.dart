import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/helpers/network_helper.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/features/merchant_points_summary/data/data_sources/due_pay_remote_data_source.dart';
import 'package:cherubini/features/merchant_points_summary/domain/repositories/due_pay_repo.dart';
import 'package:dartz/dartz.dart';

class DuePayRepoImpl extends DuePayRepo{
  DuePayRemoteDataSource duePayRemoteDataSource;
  DuePayRepoImpl({required this.duePayRemoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> payToTechnician(num dueId, List<num> technicians) =>executeImpl(() => duePayRemoteDataSource.payToTechnician(dueId, technicians),);
}