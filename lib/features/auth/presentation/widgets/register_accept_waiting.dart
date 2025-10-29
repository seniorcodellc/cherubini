import 'package:cherubini/features/auth/presentation/widgets/register_accept_message.dart';

import '../../../../exports.dart';

class RegisterAcceptWaiting extends StatelessWidget {
  const RegisterAcceptWaiting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "تم إرسال طلب التسجيل الخاص بك. سيتم",
          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        Text(
          " مراجعته من قبل المسؤول وسيتم",
          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        Text(
          " إعلامك عند الموافقة.",
          style: getRegularTextStyle(fontSize: 16, color: AppColors.grayHint),
        ),
        21.vs,
        RegisterAcceptMessage(),
      ],
    );
  }
}
