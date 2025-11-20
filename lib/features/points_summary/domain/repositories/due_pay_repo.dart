import 'package:cherubini/exports.dart';

abstract class DuePayRepo{
  Future<Either<Failure,ResponseModel>> payToTechnician(num dueId, List<num> technicians);
}