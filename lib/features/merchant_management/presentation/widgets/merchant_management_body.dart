import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/presentation/widgets/waiting_list.dart';

import 'active_list.dart';
import 'management_toggle.dart';

class MerchantManagementBody extends StatefulWidget {
  const MerchantManagementBody({super.key});

  @override
  State<MerchantManagementBody> createState() => _MerchantManagementBodyState();
}

class _MerchantManagementBodyState extends State<MerchantManagementBody> {
  bool selectedTab = true;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Toggle as first item
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

        // Add some spacing
        SliverToBoxAdapter(child: 16.hs),

        // AnimatedSwitcher for list content
        SliverToBoxAdapter(
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            switchInCurve: Curves.easeInOut,
            child: selectedTab
                ? ActiveList(key: const ValueKey(true))
                : WaitingList(key: const ValueKey(false)),
          ),
        ),
      ],
    );
  }
}