import 'package:cherubini/config/failures/failure.dart';
import 'package:cherubini/config/helpers/network_helper.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/features/scan/data/data_sources/qr_code_remote_data_source.dart';
import 'package:dartz/dartz.dart';

import '../../domain/repositories/qr_code_repo.dart';

class QrCodeRepoImpl extends QrCodeRepo{
  QrCodeRemoteDataSource qrCodeRemoteDataSource;
  QrCodeRepoImpl({required this.qrCodeRemoteDataSource});

  @override
  Future<Either<Failure, ResponseModel>> getData({num? id, query})=>executeImpl(() => qrCodeRemoteDataSource.getData(query: query),);
}