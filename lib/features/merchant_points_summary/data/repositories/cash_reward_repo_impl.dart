import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/helpers/network_helper.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/core/history/data/data_sources/history_remote_datasource.dart';
import 'package:cherubini/core/history/domain/repositories/histroy_repo.dart';
import 'package:cherubini/features/merchant_points_summary/data/data_sources/cash_reward_remote_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/cash_reward_repo.dart';

class CashRewardRepoRepoImpl extends CashRewardRepo {
  CashRewardRemoteDatasource cashRewardRemoteDatasource;
  CashRewardRepoRepoImpl({required this.cashRewardRemoteDatasource});

  @override
  Future<Either<Failure, ResponseModel>> getList({num? id, query}) => executeImpl(() => cashRewardRemoteDatasource.getList());
}
