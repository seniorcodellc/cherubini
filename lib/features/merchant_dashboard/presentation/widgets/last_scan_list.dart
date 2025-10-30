import 'package:flutter/material.dart';
import '../../data/statics/statics.dart';
import 'last_scan_item.dart';
import 'package:cherubini/exports.dart';

class LastScanList extends StatelessWidget {
  const LastScanList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      // Disable scrolling if nested
      itemCount: DashboardStatics.scanList.length,
      itemBuilder: (context, index) {
        final model = DashboardStatics.scanList[index];
        return LastScanItem(model: model);
      },
    );
  }

}
