import 'package:flutter/material.dart';
import '../../data/statics/statics.dart';
import 'last_scan_item.dart';
import 'package:cherubini/exports.dart';
class LastScanList extends StatelessWidget {
  const LastScanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(DashboardStatics.scanList.length, (index) {
        final model = DashboardStatics.scanList[index];
        return LastScanItem(model: model);
      }),
    );
  }
}


