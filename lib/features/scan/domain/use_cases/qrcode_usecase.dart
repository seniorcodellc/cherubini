import 'package:cherubini/config/data_generic/domain/use_cases/generic_use_case.dart';

import '../repositories/qr_code_repo.dart';

class QrCodeUseCases extends GenericUseCases{
  final QrCodeRepo qrCodeRepo;
  QrCodeUseCases({required this.qrCodeRepo}):super(genericRepo: qrCodeRepo);

}