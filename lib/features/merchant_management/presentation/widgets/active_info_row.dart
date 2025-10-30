import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_management/data/models/tech_active_model.dart';
import 'package:cherubini/features/merchant_management/presentation/widgets/show_details_button.dart';

import '../../../../core/widgets/h_line.dart';

class ActiveInfoRow extends StatelessWidget {
  const ActiveInfoRow({super.key, required this.model});
 final TechActiveModel model ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(all: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            children: [
              Text(model.points,style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.accentColor),),
              8.vs,
              Text('نقطة',style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.subTitleColor),),
            ],
          ),
          20.hs,
          VLine(height: 50.0.h,),
          Column(
            children: [
              Text(model.scan,style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.accentColor),),
              8.vs,
              Text('عمليه المسح',style: getRegularTextStyle(fontSize: 14.sp,color: AppColors.subTitleColor),),
            ],
          ),
          VLine(height: 50.0.h,),
          ShowDetailsButton(),
        ],
      ),
    );

  }
}
