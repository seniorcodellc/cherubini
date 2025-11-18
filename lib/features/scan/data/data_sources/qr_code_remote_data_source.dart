import 'dart:convert';

import 'package:cherubini/config/data_generic/data/data_sources/generic_data_remote_data_source.dart';
import 'package:cherubini/config/network/constants/endpoinst.dart';
import 'package:cherubini/config/network/impl/network_requests.dart';
import 'package:cherubini/config/network/model/response_model.dart';

abstract class QrCodeRemoteDataSource extends GenericRemoteDataSource {}

class QrCodeRemoteDataSourceImpl extends RequestsImpl implements QrCodeRemoteDataSource {
  QrCodeRemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> getData({num? id, query}) =>
      postRequest(endPoint: EndPoints.qrCode, getFromJsonFunction: ResponseModel.fromJson, data: jsonEncode([{
        'id':1,
        "code":query
      }]));
}
