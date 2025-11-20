import 'package:cherubini/exports.dart';

class CashRewardResponseModel extends ListResponseModel<CashRewardModel> {
  CashRewardResponseModel.fromJson(super.json) : super.fromJson();

  @override
  // TODO: implement getFromJsonFunction
  Function(Map<String, dynamic> data) get getFromJsonFunction => CashRewardModel.fromJson;
}

class CashRewardModel {
  CashRewardModel({
    num? id,
    String? calculatingDate,
    num? totalReadings,
    num? totalPointsBalance,
    num? totalPointsDeducted,
    num? totalPointsDue,
    num? cashReward,
    bool? isCollected,
    List<DueDetailsModel>? detail,
  }) {
    _id = id;
    _calculatingDate = calculatingDate;
    _totalReadings = totalReadings;
    _totalPointsBalance = totalPointsBalance;
    _totalPointsDeducted = totalPointsDeducted;
    _totalPointsDue = totalPointsDue;
    _cashReward = cashReward;
    _isCollected = isCollected;
    _detail = detail;
  }

  CashRewardModel.fromJson(dynamic json) {
    _id = json['id'];
    _calculatingDate = json['calculatingDate'];
    _totalReadings = json['totalReadings'];
    _totalPointsBalance = json['totalPointsBalance'];
    _totalPointsDeducted = json['totalPointsDeducted'];
    _totalPointsDue = json['totalPointsDue'];
    _cashReward = json['cashReward'];
    _isCollected = json['isCollected'];
    if (json['detail'] != null) {
      _detail = [];
      json['detail'].forEach((v) {
        _detail?.add(DueDetailsModel.fromJson(v));
      });
    }
  }
  num? _id;
  String? _calculatingDate;
  num? _totalReadings;
  num? _totalPointsBalance;
  num? _totalPointsDeducted;
  num? _totalPointsDue;
  num? _cashReward;
  bool? _isCollected;
  List<DueDetailsModel>? _detail;
  CashRewardModel copyWith({
    num? id,
    String? calculatingDate,
    num? totalReadings,
    num? totalPointsBalance,
    num? totalPointsDeducted,
    num? totalPointsDue,
    num? cashReward,
    bool? isCollected,
    List<DueDetailsModel>? detail,
  }) => CashRewardModel(
    id: id ?? _id,
    calculatingDate: calculatingDate ?? _calculatingDate,
    totalReadings: totalReadings ?? _totalReadings,
    totalPointsBalance: totalPointsBalance ?? _totalPointsBalance,
    totalPointsDeducted: totalPointsDeducted ?? _totalPointsDeducted,
    totalPointsDue: totalPointsDue ?? _totalPointsDue,
    cashReward: cashReward ?? _cashReward,
    isCollected: isCollected ?? _isCollected,
    detail: detail ?? _detail,
  );
  num? get id => _id;
  String? get calculatingDate => _calculatingDate;
  num? get totalReadings => _totalReadings;
  num? get totalPointsBalance => _totalPointsBalance;
  num? get totalPointsDeducted => _totalPointsDeducted;
  num? get totalPointsDue => _totalPointsDue;
  num? get cashReward => _cashReward;
  bool? get isCollected => _isCollected;
  List<DueDetailsModel>? get detail => _detail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['calculatingDate'] = _calculatingDate;
    map['totalReadings'] = _totalReadings;
    map['totalPointsBalance'] = _totalPointsBalance;
    map['totalPointsDeducted'] = _totalPointsDeducted;
    map['totalPointsDue'] = _totalPointsDue;
    map['cashReward'] = _cashReward;
    map['isCollected'] = _isCollected;

    return map;
  }
}

/// technicianId : 12
/// name : "احمد صبحى"
/// totalReadings : 2.0
/// totalPointsBalance : 2.0
/// totalPointsDeducted : 0.0
/// totalPointsDue : 100.0
/// cashReward : 2500.0
/// isCollected : false
/// collectedAt : null

class DueDetailsModel {
  DueDetailsModel({
    this.technicianId,
    this.name,
    this.totalReadings,
    this.totalPointsBalance,
    this.totalPointsDeducted, this.totalPointsDue,
    this.cashReward,
    this.isCollected,
    this.isToPay = false,
    this.collectedAt,
  });

  DueDetailsModel.fromJson(dynamic json) {
    technicianId = json['technicianId'];
    name = json['name'];
    totalReadings = json['totalReadings'];
    totalPointsBalance = json['totalPointsBalance'];
    totalPointsDeducted = json['totalPointsDeducted'];
    totalPointsDue = json['totalPointsDue'];
    cashReward = json['cashReward'];
    isCollected = json['isCollected'];
    collectedAt = json['collectedAt'];
  }

  num? technicianId;
  String? name;
  num? totalReadings;
  num? totalPointsBalance;
  num? totalPointsDeducted;
  num? totalPointsDue;
  num? cashReward;
  bool? isToPay;
  bool? isCollected;
  dynamic collectedAt;

}
