import 'package:cherubini/exports.dart';
import 'package:cherubini/features/edit_profile/data/models/edit_profile_request_model.dart';
import 'package:cherubini/features/edit_profile/domain/repositories/edit_profile_repo.dart';
class EditProfileUseCase {
  EditProfileRepo editProfileRepo;

  EditProfileUseCase({required this.editProfileRepo});

  Future<Either<Failure, ResponseModel>> editProfile(
      {required EditProfileRequestModel editProfileRequestModel,}) async =>
      editProfileRepo.editProfile(
          editProfileRequestModel: editProfileRequestModel);
}