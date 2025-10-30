import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/settings_body.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: "الإعدادت "),
      child: CustomScrollView(
          slivers:[
            SliverToBoxAdapter(child:  SettingsBody(),)
          ]
         ),
    );
  }
}
