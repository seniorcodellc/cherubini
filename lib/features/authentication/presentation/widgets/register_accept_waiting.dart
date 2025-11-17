import 'package:cherubini/features/authentication/presentation/widgets/register_accept_message.dart';

import '../../../../exports.dart';

class RegisterAcceptWaiting extends StatelessWidget {
  const RegisterAcceptWaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.waitingStatement1,
          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        Text(
          AppStrings.waitingStatement2,

          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        Text(
          AppStrings.waitingStatement3,

          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        20.vs,
        RegisterAcceptMessage(),
      ],
    );
  }
}
