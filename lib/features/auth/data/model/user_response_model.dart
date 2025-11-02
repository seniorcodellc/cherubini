
import '../../../../config/network/model/response_model.dart';

class RequestIdResponseModel extends ObjectResponseModel<UserModel> {
  RequestIdResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => RequestIdModel.fromJson;
}

class RequestIdModel {
  String? requestId;

  RequestIdModel({this.requestId});

  factory RequestIdModel.fromJson(dynamic json) => RequestIdModel(requestId: json['requestID']);
}
class UserResponseModel extends ObjectResponseModel<UserDataModel> {
  UserResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => UserDataModel.fromJson;

}
class UserDataModel {
  UserModel? userModel;
  String ?token;

  UserDataModel({this.userModel, this.token});
  UserDataModel.fromJson(Map<String, dynamic> json) {
    userModel = json['user'] != null ? UserModel.fromJson(json['user']) : null;
    token = json['token'];
  }
  toJson() => {'user': userModel?.toJson(), 'token': token};
}

class UserModel {
  num? id;
  String? name;
  String? mobile;
  String? email;
  String? password;
  String? confirmPassword;
  int? xGenderID;
  int? nationalityID;
  String? nationalID;
  String? passport;
  String? birthDate;
  String? personalPhoto;
  int? xVisitPaymentTypeID;
  int? insuranceCompanyID;
  String? policyID;
  String? cardNo;
  String? cardPhoto;
  List<MobileUserRegDetail>? mobileUserRegDetails;

  UserModel({
    this.id,
    this.name,
    this.mobile,
    this.email,
    this.password,
    this.confirmPassword,
    this.xGenderID,
    this.nationalityID,
    this.nationalID,
    this.passport,
    this.birthDate,
    this.personalPhoto,
    this.xVisitPaymentTypeID,
    this.insuranceCompanyID,
    this.policyID,
    this.cardNo,
    this.cardPhoto,
    this.mobileUserRegDetails,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['ID'],
      name: json['Name'],
      mobile: json['Mobile'],
      email: json['Email'],
      password: json['Password'],
      confirmPassword: json['ConfirmPassword'],
      xGenderID: json['XGenderID'],
      nationalityID: json['NationalityID'],
      nationalID: json['NationalID']?.toString(),
      passport: json['Passport'],
      birthDate: json['BirthDate'],
      personalPhoto: json['PersonalPhoto'],
      xVisitPaymentTypeID: json['XVisitPaymentTypeID'],
      insuranceCompanyID: json['InsuranceCompanyID'],
      policyID: json['PolicyID'],
      cardNo: json['CardNo'],
      cardPhoto: json['CardPhoto'],
      mobileUserRegDetails: json['MobileUserRegDetails'] != null
          ? (json['MobileUserRegDetails'] as List).map((e) => MobileUserRegDetail.fromJson(e)).toList()
          : [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ID': id,
      'Name': name,
      'Mobile': mobile,
      'Email': email,
      'Password': password,
      'ConfirmPassword': confirmPassword,
      'XGenderID': xGenderID,
      'NationalityID': nationalityID,
      'NationalID': nationalID,
      'Passport': passport,
      'BirthDate': birthDate,
      'PersonalPhoto': personalPhoto,
      'XVisitPaymentTypeID': xVisitPaymentTypeID,
      'InsuranceCompanyID': insuranceCompanyID,
      'PolicyID': policyID,
      'CardNo': cardNo,
      'CardPhoto': cardPhoto,
      'MobileUserRegDetails': mobileUserRegDetails?.map((e) => e.toJson()).toList(),
    };
  }
}

class MobileUserRegDetail {
  int? xInsuranceMemberTypeID;
  String? name;
  int? xGenderID;
  int? nationalityID;
  String? nationalID;
  String? passport;
  String? birthDate;
  int? insuranceCompanyID;
  String? policyID;
  String? cardNo;
  String? cardPhoto;

  MobileUserRegDetail({
    this.xInsuranceMemberTypeID,
    this.name,
    this.xGenderID,
    this.nationalityID,
    this.nationalID,
    this.passport,
    this.birthDate,
    this.insuranceCompanyID,
    this.policyID,
    this.cardNo,
    this.cardPhoto,
  });

  factory MobileUserRegDetail.fromJson(Map<String, dynamic> json) {
    return MobileUserRegDetail(
      xInsuranceMemberTypeID: json['XInsuranceMemberTypeID'],
      name: json['Name'],
      xGenderID: json['XGenderID'],
      nationalityID: json['NationalityID'],
      nationalID: json['NationalID']?.toString(),
      passport: json['Passport'],
      birthDate: json['BirthDate'],
      insuranceCompanyID: json['InsuranceCompanyID'],
      policyID: json['PolicyID'],
      cardNo: json['CardNo'],
      cardPhoto: json['CardPhoto'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'XInsuranceMemberTypeID': xInsuranceMemberTypeID,
      'Name': name,
      'XGenderID': xGenderID,
      'NationalityID': nationalityID,
      'NationalID': nationalID,
      'Passport': passport,
      'BirthDate': birthDate,
      'InsuranceCompanyID': insuranceCompanyID,
      'PolicyID': policyID,
      'CardNo': cardNo,
      'CardPhoto': cardPhoto,
    };
  }
}
