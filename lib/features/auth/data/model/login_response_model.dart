import 'package:cherubini/config/network/model/response_model.dart';

class LoginResponseModel extends ObjectResponseModel{
  LoginResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => UserLoginModel.fromJson;
  
}
class UserLoginModel {
  int? id;

  UserLoginModel({this.id});

  factory UserLoginModel.fromJson(dynamic json) => UserLoginModel(id: json['id']);
}