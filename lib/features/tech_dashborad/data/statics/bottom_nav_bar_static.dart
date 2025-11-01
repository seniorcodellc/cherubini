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
      tabName: "الرئيسية",
      screen: TechDashboard(),
      systemBarColor: AppColors.gradientColorStart,
    ),
    BottomNavBarModel(
      asset: AppAssets.loyalty,
      tabName: "النقاط",
      appBatTitle: 'ملخص النقاط',
      screen: TechPointsSummaryScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.logs,
      tabName: "السجلات",
      appBatTitle: 'سجل العمليات',
      screen: TechOperationsLogScreen(),
    ),
    BottomNavBarModel(
      asset: AppAssets.tabSettings,
      tabName: "الإعدادات",
      appBatTitle: 'الإعدادات',
      screen: TechSettingsScreen(),
    ),
  ];
}
