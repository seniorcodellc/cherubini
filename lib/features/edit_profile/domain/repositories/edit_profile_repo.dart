import "package:cherubini/exports.dart";
import "package:cherubini/features/edit_profile/data/models/edit_profile_request_model.dart";
abstract class EditProfileRepo {
  Future<Either<Failure, ResponseModel>> editProfile({required EditProfileRequestModel editProfileRequestModel});
}