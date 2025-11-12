import 'package:cherubini/exports.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_background.dart';
import '../widgets/active_list.dart';
import '../widgets/management_toggle.dart';
import '../widgets/not_active_list.dart';
import '../widgets/waiting_list.dart';

class TechnicianManagementScreen extends StatefulWidget {
  const TechnicianManagementScreen({super.key});

  @override
  State<TechnicianManagementScreen> createState() =>
      _TechnicianManagementScreenState();
}

class _TechnicianManagementScreenState
    extends State<TechnicianManagementScreen> {
  int selectedTabIndex = 0; // 0 = Active, 1 = Waiting, 2 = Not Active

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.technicianManagement),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ManagementToggle(
              selectedTabIndex: selectedTabIndex,
              onTabSelected: (i) => setState(() => selectedTabIndex = i),
            ),
          ),
          SliverToBoxAdapter(child: 16.hs),
          SliverToBoxAdapter(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              child: _tabContent(selectedTabIndex),
            ),
          ),
        ],
      ),
    );
  }

  Widget _tabContent(int index) {
    switch (index) {
      case 0:
        return ActiveList(key: const ValueKey(0));
      case 1:
        return WaitingList(key: const ValueKey(1));
      case 2:
        return NotActiveList(key: const ValueKey(2));
      default:
        return const SizedBox.shrink();
    }
  }
}