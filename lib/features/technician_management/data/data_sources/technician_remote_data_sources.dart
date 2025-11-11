import 'package:cherubini/exports.dart';

import '../models/technician_response_model/technician_response_model.dart';

abstract class TechnicianRemoteDataSources extends ListRemoteDataSource {
  Future<ResponseModel> getApproved({num? id, query});
  Future<ResponseModel> getSuspend({num? id, query});
  Future<ResponseModel> getUnSuspend({num? id, query});
}

class TechnicianRemoteDataSourcesImpl extends RequestsImpl
    implements TechnicianRemoteDataSources {
  TechnicianRemoteDataSourcesImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getList({num? id, query}) => getRequest(
    endPoint: EndPoints.technicianList,
    getFromJsonFunction: TechnicianResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> getApproved({num? id, query}) => getRequest(
    endPoint: EndPoints.approved,
    getFromJsonFunction: TechnicianResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> getSuspend({num? id, query}) => getRequest(
    endPoint: EndPoints.suspend,
    getFromJsonFunction: TechnicianResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> getUnSuspend({num? id, query}) => getRequest(
    endPoint: EndPoints.unSuspend,
    getFromJsonFunction: TechnicianResponseModel.fromJson,
  );
}
