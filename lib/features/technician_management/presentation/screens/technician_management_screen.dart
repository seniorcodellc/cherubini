import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/active_list.dart';
import '../widgets/management_toggle.dart';
import '../widgets/waiting_list.dart';

class TechnicianManagementScreen extends StatefulWidget {
  const TechnicianManagementScreen({super.key});

  @override
  State<TechnicianManagementScreen> createState() => _TechnicianManagementScreenState();
}

class _TechnicianManagementScreenState extends State<TechnicianManagementScreen> {
  bool selectedTab = true;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
        backgroundColor: AppColors.bgColor,
        appBar: CustomAppbar(title: AppStrings.technicianManagement),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ManagementToggle(
                onTabSelected: (value) {
                  setState(() {
                    selectedTab = value;
                  });
                },
                selectedTab: selectedTab,
              ),
            ),
            SliverToBoxAdapter(child: 16.hs),
            SliverToBoxAdapter(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                switchInCurve: Curves.easeInOut,
                child: selectedTab
                    ? ActiveList()
                    : WaitingList(),
              ),
            ),
          ],
        ),
    );
  }
}
