import 'package:cherubini/config/list_generic/data/data_sources/list_remote_datasource.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/authentication/data/model/response_model/governorate_response_model.dart';

abstract class GovernoratesRemoteDataSource extends BaseListRemoteDataSource{

}
class GovernoratesRemoteDatasourceImpl extends RemoteExecuteImpl implements GovernoratesRemoteDataSource{
  GovernoratesRemoteDatasourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getList({num? id, query})=>getData(endPoint: EndPoints.governorate,
      getFromJsonFunction: GovernorateResponseModel.fromJson);
  
}