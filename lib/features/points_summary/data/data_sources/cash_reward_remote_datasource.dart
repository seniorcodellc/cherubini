import 'package:cherubini/config/list_generic/data/data_sources/list_remote_datasource.dart';
import 'package:cherubini/config/network/constants/endpoinst.dart';
import 'package:cherubini/config/network/impl/network_requests.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/core/history/data/models/history_response_model.dart';

import '../models/cash_reward_response_model.dart';

abstract class CashRewardRemoteDatasource extends ListRemoteDataSource {}

class CashRewardRemoteDataSourceImpl extends RequestsImpl implements CashRewardRemoteDatasource {
  CashRewardRemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getList({num? id, query}) => getRequest(
    endPoint: EndPoints.cashReward,
    getFromJsonFunction: CashRewardResponseModel.fromJson,

  );
}
