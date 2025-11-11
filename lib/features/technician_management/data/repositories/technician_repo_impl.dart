import '../../../../exports.dart';
import '../../domain/repositories/technician_repo.dart';
import '../data_sources/technician_remote_data_sources.dart';

class TechnicianRepoImpl extends TechnicianRepo {
  TechnicianRemoteDataSources technicianRemoteDataSources;
  TechnicianRepoImpl({required this.technicianRemoteDataSources});
  @override
  Future<Either<Failure, ResponseModel>> getList({num? id, query}) =>
      executeImpl(() => technicianRemoteDataSources.getList());
}
