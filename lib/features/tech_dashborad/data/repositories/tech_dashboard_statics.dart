import '../../../../core/utils/app_assets.dart';
import '../../../merchant_dashboard/data/models/points_model.dart';
import '../../../merchant_dashboard/data/models/scan_model.dart';

class TechDashboardStatics {
  static List<PointsModel> techPointsList = [
    PointsModel(
      iconPath: AppAssets.loyaltyFilled,
      title: 'إجمالى النقاط ',
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
  static List<ScanModel> techScanList = [
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
