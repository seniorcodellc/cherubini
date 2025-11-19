import 'dart:convert';

import 'package:cherubini/config/network/constants/endpoinst.dart';
import 'package:cherubini/config/network/impl/network_requests.dart';
import 'package:cherubini/config/network/model/response_model.dart';

abstract class DuePayRemoteDataSource {
  payToTechnician(num dueId, List<num> technicians);
}

class DuePayRemoteDataSourceImpl extends RequestsImpl implements DuePayRemoteDataSource {
  DuePayRemoteDataSourceImpl({required super.dioConsumer});

  @override
  payToTechnician(num dueId, List<num> technicians) => postRequest(
    endPoint: EndPoints.duePay,
    getFromJsonFunction: ResponseModel.fromJson,

    data: jsonEncode({'id': dueId, "technicianIds": technicians}),
  );
}
