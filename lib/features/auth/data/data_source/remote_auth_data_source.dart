import 'package:cherubini/features/auth/data/model/tech_sign_up_model.dart';
import 'package:cherubini/features/auth/data/model/tech_sign_up_response_model.dart';

import '../../../../exports.dart';
import '../model/login_model.dart';
import '../model/login_response_model.dart';
import '../model/request_model/enter_phone_number_request_model.dart';
import '../model/request_model/resend_code_request_model.dart';
import '../model/request_model/reset_password_request_model.dart';
import '../model/request_model/verify_request_model.dart';
import '../model/response_model/forget_password_response_model.dart';
import '../model/response_model/logout_response_model.dart';
import '../model/user_response_model.dart';

abstract class AuthRemoteDataSource {
  Future<ResponseModel> login({required LoginModel login});
  Future<ResponseModel> logout();
  Future<ResponseModel> register({required TechSignUpModel techSignUpModel});
  Future<ResponseModel> verify({
    required VerifyRequestModel verifyRequestModel,
  });
  Future<ResponseModel> forgetPassword({
    required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel,
  });
  Future<ResponseModel> verifyForgetPassword({
    required VerifyRequestModel verifyRequestModel,
  });
  Future<ResponseModel> resetPassword({
    required ResetPasswordRequestModel resetPasswordRequestModel,
  });
  Future<ResponseModel> reSendCode({
    required ReSendRequestModel resendRequestModel,
  });
  Future<ResponseModel> editProfile({required UserModel userEdit});

  Future<ResponseModel> deleteAccount({required int accountId});
  // Future<ResponseModel> changeNumber({required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel});
}

class AuthRemoteDataSourceImpl extends RemoteExecuteImpl
    implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required super.dioConsumer});
  @override
  Future<ResponseModel> login({required LoginModel login}) => addData(
    endPoint: EndPoints.login,
    data: login.toJson(),
    getFromJsonFunction: LoginResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> logout() => addData(
    endPoint: EndPoints.logout,
    getFromJsonFunction: LogoutResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> register({required TechSignUpModel techSignUpModel}) =>
      addData(
        endPoint: EndPoints.register,
        data: techSignUpModel.toJson(),
        //  isFormData: true,
        getFromJsonFunction: TechSignUpResponseModel.fromJson,
      );

  @override
  Future<ResponseModel> verify({
    required VerifyRequestModel verifyRequestModel,
  }) => addData(
    endPoint: EndPoints.verify,
    data: verifyRequestModel.toJson(),
    getFromJsonFunction: UserResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> forgetPassword({
    required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel,
  }) => addData(
    endPoint: EndPoints.forgetPassword,
    data: enterPhoneNumberRequestModel.toJson(),
    getFromJsonFunction: ForgetPasswordResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> verifyForgetPassword({
    required VerifyRequestModel verifyRequestModel,
  }) => addData(
    endPoint: EndPoints.verifyForgetPassword,
    data: verifyRequestModel.toJson(),
    getFromJsonFunction: RequestIdResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> resetPassword({
    required ResetPasswordRequestModel resetPasswordRequestModel,
  }) => addData(
    endPoint: EndPoints.resetPassword,
    data: resetPasswordRequestModel.toJson(),
    getFromJsonFunction: ResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> reSendCode({
    required ReSendRequestModel resendRequestModel,
  }) => addData(
    endPoint: EndPoints.reSend,
    data: resendRequestModel.toJson(),
    getFromJsonFunction: RequestIdResponseModel.fromJson,
  );
  @override
  Future<ResponseModel> editProfile({required UserModel userEdit}) =>
      updateData(
        endPoint: "${EndPoints.login}/${userEdit.id}",
        data: userEdit.toJson(),
        isFormData: true,
        getFromJsonFunction: RequestIdResponseModel.fromJson,
      );

  @override
  Future<ResponseModel> deleteAccount({required int accountId}) =>
      remoteExecute(
        request: dioConsumer.deleteRequest(
          path: "${EndPoints.deleteAccount}/$accountId",
        ),
        fromJsonFunction: LogoutResponseModel.fromJson,
      );

  // @override

  // @override

  // @override
  // Future<ResponseModel> changeNumber({required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel}) => remoteExecute(
  //     request: dioConsumer.postRequest(
  //       path: EndPoints.changePhone,
  //       body: enterPhoneNumberRequestModel.toJson(),
  //     ),
  //     fromJsonFunction: ChangeNumberResponseModel.fromJson);
}
