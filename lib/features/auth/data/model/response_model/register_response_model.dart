import 'package:cherubini/config/network/model/response_model.dart';

class RegisterResponseModel extends ObjectResponseModel{
  RegisterResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => UserRegisterModel.fromJson;

}
class UserRegisterModel {
  int? id;

  UserRegisterModel({this.id});

  factory UserRegisterModel.fromJson(dynamic json) => UserRegisterModel(id: json['id']);
}