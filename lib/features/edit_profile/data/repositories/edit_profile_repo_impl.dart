import 'package:cherubini/exports.dart';
import 'package:cherubini/features/edit_profile/data/models/edit_profile_request_model.dart';
import 'package:cherubini/features/edit_profile/domain/repositories/edit_profile_repo.dart';

import '../data_sources/edit_profile_remote_data_source.dart';
class EditProfileRepoImpl extends EditProfileRepo {
  final EditProfileRemoteDataSource editProfileRemoteDataSource;

  EditProfileRepoImpl({
    required this.editProfileRemoteDataSource,
  });

  @override
  Future<Either<Failure, ResponseModel>> editProfile({required EditProfileRequestModel editProfileRequestModel})
  => executeImpl(
        () => editProfileRemoteDataSource.editProfile(editProfileRequestModel: editProfileRequestModel),
  );
}