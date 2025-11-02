import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/core/widgets/custom_floating_action_button.dart';

import '../../exports.dart';
import '../../features/tech_dashborad/data/statics/bottom_nav_bar_static.dart';

class CustomBottomNavBar extends StatefulWidget {
  // static final GlobalKey<_CustomBottomNavBarState> navBarKey =
  //     GlobalKey<_CustomBottomNavBarState>();
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int selectedIndex = 0;

  void changeTab(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      floatingActionButton: CustomFloatingActionButton(),
      showAppbar: BottomNavBarStatic.screens[selectedIndex].appBatTitle != null,
      appBar: BottomNavBarStatic.screens[selectedIndex].appBatTitle == null
          ? null
          : CustomAppbar(
              title: BottomNavBarStatic.screens[selectedIndex].appBatTitle!,
            ),
      statusBarColor:
          BottomNavBarStatic.screens[selectedIndex].systemBarColor ??
          AppColors.white,
      bottomNavRoute: Container(
        height: 64.h,
        width: 375.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r),
            topRight: Radius.circular(20.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            bottomNavBarTab(0),
            bottomNavBarTab(1),
            45.hs,
            bottomNavBarTab(2),
            bottomNavBarTab(3),
          ],
        ),
      ),
      child: BottomNavBarStatic.screens[selectedIndex].screen,
    );
  }

  Widget bottomNavBarTab(int index) {
    final model = BottomNavBarStatic.screens[index];
    final bool isSelected = selectedIndex == index;

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        setState(() => selectedIndex = index);
      },
      child: Padding(
        padding: getPadding(horizontal: 10.w, bottom: 5.h, top: 5.h),
        child: Column(
          children: [
            CustomSVGImage(
              asset: model.asset,
              color: isSelected
                  ? AppColors.primaryColor
                  : AppColors.unselectedTab,
            ),
            5.vs,
            Text(
              model.tabName,
              style: isSelected
                  ? getSemiBoldTextStyle(
                      fontSize: 12,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600,
                    )
                  : getRegularTextStyle(
                      fontSize: 12,
                      color: AppColors.unselectedTab,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
