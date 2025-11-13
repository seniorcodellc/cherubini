import 'package:cherubini/features/merchant_dashboard/presentation/screens/merchant_dashboard_screen.dart';
import 'package:cherubini/features/merchant_operations/presentation/screens/merchant_operations_log_screen.dart';
import 'package:cherubini/features/merchant_points_summary/presentation/screens/merchant_points_summary.dart';
import 'package:cherubini/features/merchant_settings/presentation/screens/merchant_settings.dart';
import 'package:cherubini/features/tech_dashborad/presentation/screens/tech_dashboard.dart';
import 'package:cherubini/features/tech_operations_log/presentation/screens/tech_operations_log_screen.dart';
import 'package:cherubini/features/tech_points_summary/presentation/screens/tech_points_summary_screen.dart';
import '../../../../exports.dart';
import '../../../../features/tech_settings/presentation/screens/tech_settings_screen.dart';
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
      screen: MerchantPointsSummary(),
    ),
    BottomNavBarModel(
      asset: AppAssets.logs,
      tabName: AppStrings.logsAr,
      appBatTitle: AppStrings.operationsLogsAr,
      screen: MerchantOperationsLogScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.tabSettings,
      tabName: AppStrings.settings,
      appBatTitle: AppStrings.settings,
      screen: MerchantSettings(),
    ),
  ];
}
