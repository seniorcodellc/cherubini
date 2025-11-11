import 'package:cherubini/core/history/data/models/history_response_model.dart';
import 'package:cherubini/core/history/presentation/manager/history_cubit.dart';
import 'package:flutter/material.dart';
import '../../data/statics/statics.dart';
import 'last_scan_item.dart';
import 'package:cherubini/exports.dart';

class LastScanList extends StatelessWidget {
  const LastScanList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: getPadding(
            start: 16.0.w,
            end: 16.0.w,
            top: 16.0.h,
            bottom: 8.0.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.lastScanOperations,
                style: getBoldTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                AppStrings.displayAll,
                style: getRegularTextStyle(
                  fontSize: 12.sp,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: GenericListView<HistoryCubit,HistoryModel>(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemWidget: (index, items, item) => LastScanItem(history: item,),
              separatorWidget: 8.vs,
              shimmerWidget: (index) => SizedBox.shrink(),)
/*          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: DashboardStatics.scanList.length,
            itemBuilder: (context, index) {
              final model = DashboardStatics.scanList[index];
              return LastScanItem(model: model);
            },
          ),*/
        ),
      ],
    );
  }
}
