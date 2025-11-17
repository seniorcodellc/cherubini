import 'package:cherubini/exports.dart';
abstract class QrCodeRepo extends GenericRepo{
  @override
  Future<Either<Failure, ResponseModel>> getData({num? id, query});
  
}