import 'package:cherubini/core/widgets/custom_background.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../exports.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      appBar: CustomAppbar(title: ''),
      showAppbar: true,
      statusBarColor: AppColors.bgColor,
      child: Padding(
        padding: getPadding(horizontal: 35.h),
        child: Column(children: [Text("jjjjjjj")]),
      ),
    );
  }
}
