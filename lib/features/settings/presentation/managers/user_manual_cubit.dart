import 'package:cherubini/exports.dart';

import '../../domain/use_cases/user_manual_use_cases.dart';
class UserManualCubit extends GenericCubit<String>{
  final UserManualUseCases userManualUseCases;
  UserManualCubit({required this.userManualUseCases}):super(genericUseCases: userManualUseCases);
  getUserManual()=>requestDataWithDialog(startingMessage: AppStrings.downloading.trans,
  onSuccess: (document) {
    goToAnotherApp(document,scheme: Schemes.browser);
  },
  );
}