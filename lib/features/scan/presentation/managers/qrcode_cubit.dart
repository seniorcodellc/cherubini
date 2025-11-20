import 'package:cherubini/config/data_generic/presentation/managers/cubit_data_view.dart';
import 'package:cherubini/config/extensions/extensions.dart';
import 'package:cherubini/config/network/model/response_model.dart';
import 'package:cherubini/config/states/cubit_states.dart';
import 'package:cherubini/core/utils/app_strings.dart';
import 'package:cherubini/features/scan/domain/use_cases/qrcode_usecase.dart';

import '../../../../config/routes/name_routes.dart';
import '../../data/models/qr_code_model.dart';

class QrCodeCubit extends GenericCubit<dynamic> {
  final QrCodeUseCases qrCodeUseCases;
  QrCodeModel? qrCode;
  QrCodeCubit({required this.qrCodeUseCases})
    : super(genericUseCases: qrCodeUseCases);
  readQrCode(String seralCode) {
    requestDataWithDialog(
      query: seralCode,
      startingMessage: AppStrings.startReadingQrCode.trans,
      onFail: (message) {
        print("messageeeeeeee ${message}");

        qrCode = QrCodeModel(
          serialCode: seralCode,
          message: message,
          status: false,
        );
        emit(LoadedState<QrCodeModel>(data: qrCode!));
        print("SSSSSSSSSS ${state}");
        //  Routes.errorScanRoute.moveTo();
      },
      onSuccessWithMessage: (data) {
        print("messageeeeeeee ${data.message}");
        qrCode = QrCodeModel(
          serialCode: seralCode,
          message: data.message.validate,
          status: true,
        );
        //    Routes.successScanRoute.moveTo();

        emit(LoadedState(data: qrCode));
      },
    );
  }
  reset(){

    emit(InitialState());
  }
}
