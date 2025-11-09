import 'package:cherubini/config/list_generic/data/data_sources/list_remote_datasource.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/authentication/data/model/response_model/governorate_response_model.dart';

import '../home_network/response_model/profile_response_model.dart';

abstract class RemoteDataSource {
  Future<ResponseModel> profile();
}

class RemoteDataSourceImpl extends RemoteExecuteImpl
    implements RemoteDataSource {
  RemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> profile() => getData(
    endPoint: EndPoints.profile,
    getFromJsonFunction: ProfileResponseModel.fromJson,
  );
}
