import 'package:cherubini/exports.dart';
import '../models/profile_response_model.dart';

abstract class ProfileRemoteDataSource {
  Future<ResponseModel> profile();
}

class ProfileRemoteDataSourceImpl extends RemoteExecuteImpl
    implements ProfileRemoteDataSource {
  ProfileRemoteDataSourceImpl({required super.dioConsumer});

  @override
  Future<ResponseModel> profile() => getData(
    endPoint: EndPoints.profile,
    getFromJsonFunction: ProfileResponseModel.fromJson,
  );
}
