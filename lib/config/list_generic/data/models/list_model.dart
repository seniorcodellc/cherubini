
import '../../../../exports.dart';

class ListModel<T> {
  int? numberOfPages;
  List<T>? list;
  ListModel({this.numberOfPages, this.list});
}

abstract class ListResponseModel<T> extends ResponseModel {
  ListResponseModel.fromJson(dynamic json) {
    status = json['Success'];
    message = json['Message'];
    data = ListModel(list: <T>[]);
    if (json['Data'] != null) {
      json['Data'].forEach((v) {
        data.list?.add(getFromJsonFunction(v));
      });

    }
  }

  Function(Map<String, dynamic> data) get getFromJsonFunction;
}
