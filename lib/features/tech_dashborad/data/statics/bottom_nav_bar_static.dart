import 'package:cherubini/features/merchant_dashboard/presentation/screens/merchant_dashboard_screen.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_dashboard.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_operations_log_screen.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_points_summary_screen.dart';
import '../../../../exports.dart';
import '../../presentation/screens/tech_settings_screen.dart';
import '../models/bottom_nav_bar_model.dart';

class BottomNavBarStatic {
  static List<BottomNavBarModel> screens = [
    BottomNavBarModel(
      asset: AppAssets.home,
      tabName: AppStrings.home,
      screen: MerchantDashboardScreen(),
      systemBarColor: AppColors.gradientColorStart,
    ),
    BottomNavBarModel(
      asset: AppAssets.loyalty,
      tabName: AppStrings.points,
      appBatTitle: AppStrings.pointsSummary,
      screen: TechPointsSummaryScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.logs,
      tabName: AppStrings.logs,
      appBatTitle: AppStrings.operationsLogs,
      screen: TechOperationsLogScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.tabSettings,
      tabName: AppStrings.settings,
      appBatTitle: AppStrings.settings,
      screen: TechSettingsScreen(),
    ),
  ];
}
