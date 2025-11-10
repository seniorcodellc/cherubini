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
      tabName: AppStrings.homeAr,
      screen: MerchantDashboardScreen(),
      systemBarColor: AppColors.gradientColorStart,
    ),
    BottomNavBarModel(
      asset: AppAssets.loyalty,
      tabName: AppStrings.pointsAr,
      appBatTitle: AppStrings.pointsSummary,
      screen: TechPointsSummaryScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.logs,
      tabName: AppStrings.logsAr,
      appBatTitle: AppStrings.operationsLogsAr,
      screen: TechOperationsLogScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.tabSettings,
      tabName: AppStrings.settingsAr,
      appBatTitle: AppStrings.settingsAr,
      screen: TechSettingsScreen(),
    ),
  ];
}
