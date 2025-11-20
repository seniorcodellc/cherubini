import 'package:cherubini/exports.dart';

import '../models/technician_response_model/technician_response_model.dart';

abstract class TechnicianRemoteDataSource extends ListRemoteDataSource {
  Future<ResponseModel> activateOrReject(num? id,num status);
  Future<ResponseModel> suspend(num? id);
  Future<ResponseModel> reactivate(num? id);
}

class TechnicianRemoteDataSourceImpl extends RequestsImpl
    implements TechnicianRemoteDataSource {
  TechnicianRemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getList({num? id, query}) => getRequest(
    endPoint: EndPoints.technicianList,
    getFromJsonFunction: TechnicianResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> activateOrReject(num? id,num status) => postRequest(
    endPoint: EndPoints.approved,
    data: {
      "id":id,
      "status":1
    },
    getFromJsonFunction: ResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> suspend(num? id) => postRequest(
    endPoint: EndPoints.suspend,
    data: {
      "technicianId":id,
    },
    getFromJsonFunction: ResponseModel.fromJson,
  );

  @override
  Future<ResponseModel> reactivate(num? id) => postRequest(
    endPoint: EndPoints.unSuspend,
    data: {
      "technicianId":id
    },
    getFromJsonFunction: ResponseModel.fromJson,
  );
}
