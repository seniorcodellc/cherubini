import 'package:cherubini/core/profile_network/domain/use_cases/profile_use_cases.dart';

import '../../../../exports.dart';
import '../../../../features/authentication/data/model/response_model/login_response_model.dart';

class ProfileCubit extends Cubit<CubitStates> {
  ProfileCubit({required this.profileUseCases}) : super(InitialState());
  ProfileUseCases profileUseCases;

  Future<UserModel?> profile() async => managerExecute<UserModel>(
    profileUseCases.profile(),
    onSuccess: (UserModel? data) {
      // user = data;
    },
  );
}
