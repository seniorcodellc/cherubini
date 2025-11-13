import '../../../../exports.dart';

class BottomNavBarModel {
  final Widget screen;
  final String asset;
  final String tabName;
  final String? appBatTitle;
  final Color? systemBarColor;
  BottomNavBarModel({
    required this.asset,
    required this.tabName,
    this.appBatTitle,
    required this.screen,
    this.systemBarColor,
  });
}
