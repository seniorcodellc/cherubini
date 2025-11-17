import 'package:cherubini/config/data_generic/data/data_sources/generic_data_remote_data_source.dart';
import 'package:cherubini/config/network/constants/endpoinst.dart';
import 'package:cherubini/config/network/impl/network_requests.dart';
import 'package:cherubini/config/network/model/response_model.dart';

abstract class QuestionRemoteDataSource extends GenericRemoteDataSource{
  
}
class QuestionRemoteDataSourceImpl extends RequestsImpl implements QuestionRemoteDataSource{
  QuestionRemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getData({num? id, query}) =>getRequest(endPoint: EndPoints.question,
      getFromJsonFunction: ResponseModel.fromJson);
  
}