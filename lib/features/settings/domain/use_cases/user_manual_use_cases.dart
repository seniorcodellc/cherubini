

import '../../../../exports.dart';
import '../repo/user_manual_repo.dart';

class UserManualUseCases extends GenericUseCases{
  UserManualRepo userManualRepo;
  UserManualUseCases({required this.userManualRepo}):super(genericRepo: userManualRepo);
}