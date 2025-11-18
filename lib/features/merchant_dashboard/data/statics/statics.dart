import 'package:cherubini/exports.dart';
import 'package:cherubini/features/bottom_navigation/presentation/managers/bottom_nav_operation_cubit.dart';
import '../../../../core/utils/app_assets.dart';
import '../models/points_model.dart';
import '../models/quick_action_model.dart';
import '../models/scan_model.dart';

class DashboardStatics {
  static List<PointsModel> pointsList = [
    PointsModel(
      iconPath: AppAssets.loyaltyFilled,
      title: AppStrings.overallPoints,
      number: '12,450',
    ),
    PointsModel(
      iconPath: AppAssets.gift,
      title: ' النقاط المستبدلة ',
      number: '3,200',
    ),
    PointsModel(
      iconPath: AppAssets.availablePoints,
      title: ' النقاط المتاحة',
      number: '9,250',
    ),
  ];
  static List<QuickActionModel> actionsList = [
    QuickActionModel(
      iconPath: AppAssets.tech,
      title: AppStrings.techManagement,
      onTap: () {
        // getBlocData<  BottomNavOperationCubit>().changIndex(1)
        Routes.techniciansManagementRoute.moveTo();
      },
    ),
    QuickActionModel(
      iconPath: AppAssets.loyalty,
      title: AppStrings.pointsSummary,
      onTap: () {
        Routes.duesRoute.moveTo();
      },
    ),
    QuickActionModel(
      iconPath: AppAssets.history,
      title: AppStrings.operationHistory,
      onTap: () {
        Routes.operationsHistoryRoute.moveTo();
      },
    ),
    QuickActionModel(
      iconPath: AppAssets.scan,
      title: AppStrings.scanBarcode,
      onTap: () {
        Routes.scanRoute.moveTo();
      },
    ),
  ];
  static List<ScanModel> scanList = [
    ScanModel(
      title: 'SC - 002',
      date: '20/10/2025',
      points: '250+ ',
      tech: 'خالد سعيد',
      number: '5',
    ),
    ScanModel(
      title: 'SC - 003',
      date: '30/10/2025',
      points: '250+ ',
      tech: 'احمد سعيد',
      number: '6',
    ),
    ScanModel(
      title: 'SC - 004',
      date: '22/10/2025',
      points: '250+ ',
      tech: 'محمد سعيد',
      number: '7',
    ),
    ScanModel(
      title: 'SC - 005',
      date: '25/10/2025',
      points: '250+ ',
      tech: 'احمد سعيد',
      number: '4',
    ),
  ];
}
