class QrCodeRequestBody{
  List<QrCodeRequestModel>? qrCodes;
  QrCodeRequestBody({this.qrCodes});
}
class QrCodeRequestModel {
  num? id;
  String? code;
  QrCodeRequestModel({this.id,this.code});
  toJson()=>{
    'id':id,
    'code':code
  };
}