import 'package:cherubini/exports.dart';

class TechnicianResponseModel extends ListResponseModel {
  TechnicianResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction =>
      TechnicianModel.fromJson;
}

/// id : 16
/// name : "test2"
/// points : 0.0
/// status : 0

class TechnicianModel {
  TechnicianModel({num? id, String? name, num? points, num? status}) {
    _id = id;
    _name = name;
    _points = points;
    _status = status;
  }

  TechnicianModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _points = json['points'];
    _status = json['status'];
  }
  num? _id;
  String? _name;
  num? _points;
  num? _status;
  TechnicianModel copyWith({num? id, String? name, num? points, num? status}) =>
      TechnicianModel(
        id: id ?? _id,
        name: name ?? _name,
        points: points ?? _points,
        status: status ?? _status,
      );
  num? get id => _id;
  String? get name => _name;
  num? get points => _points;
  num? get status => _status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['points'] = _points;
    map['status'] = _status;
    return map;
  }
}
