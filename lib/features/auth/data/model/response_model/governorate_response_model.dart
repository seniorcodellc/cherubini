import 'package:cherubini/config/network/model/response_model.dart';

class GovernorateResponseModel extends ObjectResponseModel{
  GovernorateResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => GovernorateModel.fromJson;

}
class GovernorateModel {
  int? id;

  GovernorateModel({this.id});

  factory GovernorateModel.fromJson(dynamic json) => GovernorateModel(id: json['id']);
}