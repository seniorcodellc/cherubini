import 'package:cherubini/config/data_generic/presentation/managers/cubit_data_view.dart';
import 'package:cherubini/config/extensions/extensions.dart';
import 'package:cherubini/config/states/cubit_states.dart';
import 'package:cherubini/features/scan/domain/use_cases/qrcode_usecase.dart';

import '../../data/models/qr_code_model.dart';

class QrCubit extends CubitDataView<List>{
  final QrCodeUseCases qrCodeUseCases;
  List<QrCodeModel> qrCodes=[];
  QrCubit({required this.qrCodeUseCases}):super(genericUseCases: qrCodeUseCases);
  readQrCode(String seralCode){
    getData(onSuccessWithMessage: (data,message) {
      qrCodes.add(QrCodeModel(serialCode: seralCode,message: message.validate));
      emit(LoadedState(data: qrCodes));
    },);
  }
}