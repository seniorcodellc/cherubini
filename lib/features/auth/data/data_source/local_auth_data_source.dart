

import '../../../../exports.dart';
import '../model/user_response_model.dart';

abstract class AuthLocalDataSource {
  Future<ResponseModel> cacheUser({required UserDataModel user});
  Future<ResponseModel> getUser();
  Future<ResponseModel> clearUser();
}

class AuthLocalDataSourceImpl extends AuthLocalDataSource {
  CacheAbstract cache;
  AuthLocalDataSourceImpl({required this.cache});

  @override
  Future<ResponseModel> cacheUser({required UserDataModel user}) =>
      cache.cacheWrite( AppPrefs.prefsUserKey, user.toJson(), afterCaching: () {
         AppPrefs.user = user.userModel;
       AppPrefs.token = user.token;
      });

  @override
  Future<ResponseModel> getUser() =>
      cache.cacheRead<UserDataModel>( AppPrefs.prefsUserKey, fromJson: UserDataModel.fromJson,
          afterCaching: (UserDataModel data) {
        AppPrefs.user = data.userModel;
       AppPrefs.token = data.token;
      });

  @override
  Future<ResponseModel> clearUser() => cache.cacheRemove(
        key: AppPrefs.prefsUserKey,
        afterRemoving: () {
          AppPrefs.user = null;
          AppPrefs.token = null;
        },
      );
}
