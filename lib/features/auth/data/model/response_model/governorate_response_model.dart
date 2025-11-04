import 'package:cherubini/config/network/model/response_model.dart';

class GovernorateResponseModel extends ObjectResponseModel {
  GovernorateResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction =>
      GovernorateBaseModel.fromJson;
}

class GovernorateBaseModel {
  List<GovernorateModel>? list;

  GovernorateBaseModel({this.list});

  factory GovernorateBaseModel.fromJson(json) => GovernorateBaseModel(
      list: json['']
  );
}

class GovernorateModel {
  int? id;
  String? name;
  List<Region>? region;

  GovernorateModel({this.id, this.name, this.region});

  factory GovernorateModel.fromJson(json) => GovernorateModel(
    id: json['id'],
    name: json['name'],
    region: json['region'] != null
        ? ((json['region'] as List<dynamic>).map(
            (e) => Region.fromJson(e),
          )).toList()
        : null,
  );
}

class Region {
  int? id;
  String? name;

  Region({this.id, this.name});

  factory Region.fromJson(json) => Region(id: json['id'], name: json['name']);
}
