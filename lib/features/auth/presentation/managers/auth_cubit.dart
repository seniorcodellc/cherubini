import '../../../../config/local_notification/local_notification.dart';
import '../../../../exports.dart';
import '../../data/model/request_model/enter_phone_number_request_model.dart';
import '../../data/model/request_model/register_request_model.dart';
import '../../data/model/request_model/resend_code_request_model.dart';
import '../../data/model/request_model/reset_password_request_model.dart';
import '../../data/model/request_model/verify_request_model.dart';
import '../../data/model/user_response_model.dart';
import '../../data/model/response_model/forget_password_response_model.dart';
import '../../domain/usecase/auth_use_case.dart';

class AuthCubit extends Cubit<CubitStates> {
  AuthUseCase authUseCase;
  AuthCubit({required this.authUseCase}) : super(InitialState());

  RequestIdModel? requestId;
  UserDataModel? userDataModel;
  UserModel? userModel;
  login({required String phone, required String password}) async {
    await executeWithDialog<UserDataModel?>(
      either: authUseCase.login(phone: phone, password: password),
      startingMessage: AppStrings.signIn.trans,
      onSuccess: (UserDataModel? data) async {
        userModel = data?.userModel;
     //     getBlocData<BottomNavOperationCubit>().changIndex(0);
        Routes.bottomNavRoute.moveToCurrrentRouteAndRemoveAll;
      },
    );
  }

  logout() async => await executeWithDialog(
    either: authUseCase.logout(),
    startingMessage: AppStrings.waitingForLogout.trans,
    onSuccess: (data) async {
      requestId = null;
      AppPrefs.token = null;
      AppPrefs.user = null;
     // getBlocData<BottomNavOperationCubit>().changIndex(0);
      Routes.bottomNavRoute.moveToCurrrentRouteAndRemoveAll;
      emit(LoadedState(data: null));
    },
  );
  RequestIdModel? registerModel;
  register({required UserModel userModel}) async {
    this.userModel = userModel;
    await executeWithDialog<RequestIdModel>(
      either: authUseCase.register(registerRequestModel: userModel),
      startingMessage: AppStrings.waitingForRegistration.trans,
      onSuccess: (RequestIdModel? data) async {
        checkNotificationPermissionAndDoOperation(
          getContext,
          onSuccess: () {
            NotificationsService().showSimpleNotification(title: AppStrings.verificationAccount.trans, description: "0000");
          },
        );
        registerModel = data;
        Routes.enterOtpRoute.moveTo();
      },
    );
  }

  verify({required VerifyRequestModel verifyRequestModel, required bool isForgetPassword}) async {
    await executeWithDialog<UserDataModel>(
      either: authUseCase.verify(verifyRequestModel: verifyRequestModel),
      startingMessage: AppStrings.verificationAccount.trans,
      onSuccess: (UserDataModel? data) async {
        userModel = data?.userModel;
      //  getBlocData<BottomNavOperationCubit>().changIndex(0);
        Routes.bottomNavRoute.moveToCurrrentRouteAndRemoveAll;
        // getUserAndToken(requestId!.requestId!);
        /*   isForgetPassword
            ? Routes.resetPasswordRoute.moveTo()
            : Routes.bottomNavRoute.moveToCurrrentRouteAndRemoveAll;*/
      },
    );
  }

  reSendCode({required ReSendRequestModel resendRequestModel}) async {
    await executeWithDialog<RequestIdModel>(
      either: authUseCase.reSendCode(resendRequestModel: resendRequestModel),
      startingMessage: AppStrings.sendAgain.trans,
      onSuccess: (RequestIdModel? data) async {
        checkNotificationPermissionAndDoOperation(
          getContext,
          onSuccess: () {
            /*        NotificationsService().showSimpleNotification(
                title: AppStrings.verificationAccount.trans,
                description: data!.verificationCode.toString());*/
          },
        );
      },
    );
  }

  forgetPassword({required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel}) async {
    await executeWithDialog<ForgetPasswordDataModel>(
      either: authUseCase.forgetPassword(enterPhoneNumberRequestModel: enterPhoneNumberRequestModel),
      startingMessage: AppStrings.verificationAccount.trans,
      onSuccess: (data) async {
        checkNotificationPermissionAndDoOperation(
          getContext,
          onSuccess: () {
            NotificationsService().showSimpleNotification(
              title: AppStrings.verificationAccount.trans,
              description: data!.confirmationCode.toString(),
            );
          },
        );
        Routes.enterOtpRoute.moveToAndRemoveCurrent(
          args: {
            "phone": enterPhoneNumberRequestModel.phoneNumber,
            "countryCode": enterPhoneNumberRequestModel.countryCode,
            "isForgetPassword": true,
          },
        );
      },
    );
  }

  verifyForgetPassword({required VerifyRequestModel verifyRequestModel}) async {
    await executeWithDialog(
      either: authUseCase.verifyForgetPassword(verifyRequestModel: verifyRequestModel),
      startingMessage: AppStrings.verificationAccount.trans,
      onSuccess: (data) async {
        /*    Routes.resetPasswordRoute.moveToAndRemoveCurrent(args: {
          "phone": verifyRequestModel.phone,
          "countryCode": verifyRequestModel.countryCode,
          "code": verifyRequestModel.verifyCode,
        });*/
      },
    );
  }

  resetPassword({required ResetPasswordRequestModel resetPasswordRequestModel}) async {
    await executeWithDialog(
      either: authUseCase.resetPassword(resetPasswordRequestModel: resetPasswordRequestModel),
      startingMessage: AppStrings.verificationAccount.trans,
      onSuccess: (data) async {
        Routes.loginRoute.moveToCurrrentRouteAndRemoveAll;
      },
    );
  }

  editProfile({required UserModel userEdit}) {
    executeWithDialog<UserModel>(
      either: authUseCase.editProfile(userEdit: userEdit),
      startingMessage: AppStrings.waitingForEditProfile.trans,
      onSuccess: (data) {
        //userModel = data!.user;
        // getBlocData<BottomNavOperationCubit>().goToHome();
        emit(LoadedState(data: requestId));
      },
    );
  }

  // changeNumber(
  //     {required EnterPhoneNumberRequestModel enterPhoneNumberRequestModel,
  //     required bool isForgetPassword}) async {
  //   await executeWithDialog<ChangeNumberUserDataModel>(
  //     either: authUseCase.changeNumber(
  //         enterPhoneNumberRequestModel: enterPhoneNumberRequestModel),
  //     startingMessage: AppStrings.changeNumber.trans,
  //     onSuccess: (data) async {
  //       changeNumberUserModel = data!.user;
  //       Routes.enterOtpRoute.moveToWithArgs({
  //         "id": enterPhoneNumberRequestModel.id,
  //         "phone": enterPhoneNumberRequestModel.phoneNumber,
  //         'isForgetPassword': isForgetPassword
  //       });
  //     },
  //   );
  // }
  //

/*  deleteAccount() => executeWithDialog(
    either: authUseCase.deleteAccount(accountId: userModel!.id!),
    startingMessage: AppStrings.deletingAccount.trans,
    onSuccess: (_) {
      requestId = null;
      //  getBlocData<BottomNavOperationCubit>().closeDrawer();
      emit(LoadedState(data: null));
      Routes.bottomNavRoute.moveTo();
    },
  );*/

  Future<UserDataModel?> getUser() async => managerExecute<UserDataModel>(
    authUseCase.getUser(),
    onSuccess: (UserDataModel? data) {
      userDataModel = data;
      userModel = data?.userModel;
    },
  );
  clearUser() => managerExecute(
    authUseCase.clearUser(),
    onSuccess: (data) {
      requestId = null;
      Routes.bottomNavRoute.moveToCurrrentRouteAndRemoveAll;

      emit(LoadedState(data: null));
    },
  );

  void logOutDemo() {
    userDataModel=null;
    userModel=null;
    emit(ChangeState());
  }
}
