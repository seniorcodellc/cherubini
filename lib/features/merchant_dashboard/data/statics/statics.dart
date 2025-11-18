import 'package:cherubini/exports.dart';
import 'package:cherubini/features/bottom_navigation/presentation/managers/bottom_nav_operation_cubit.dart';
import '../../../../core/utils/app_assets.dart';
import '../models/points_model.dart';
import '../models/quick_action_model.dart';
import '../models/scan_model.dart';
 List<QuickActionModel> merchantActionsList = [
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
    title: AppStrings.scanBarCode,
    onTap: () {
      Routes.scanRoute.moveTo();
    },
  ),
];
 List<QuickActionModel> technicianActionsList = [
  QuickActionModel(
    iconPath: AppAssets.loyalty,
    title: AppStrings.pointsSummary,
    onTap: () {
      Routes.duesRoute.moveTo();
    },
  ),

  QuickActionModel(
    iconPath: AppAssets.scan,
    title: AppStrings.scanBarCode,
    onTap: () {
      Routes.scanRoute.moveTo();
    },
  ),
];
List<PointsModel> pointsList = [
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

