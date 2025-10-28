import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../data/statics/statics.dart';

class QuickActionWidget extends StatelessWidget {
  const QuickActionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(DashboardStatics.actionsList.length, (index) {
        final model = DashboardStatics.actionsList[index];
        return Container(
          margin: EdgeInsetsGeometry.symmetric(horizontal: 10),
          height: 150.h,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0.w, vertical: 10.0.h),
            child: Column(
              children: [
                Container(
                  width: 60.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0.r),
                    gradient: LinearGradient(
                      colors: [Color(0xff0F50AA), Color(0xff3495E9)],
                      begin: AlignmentGeometry.bottomLeft,
                      end: AlignmentGeometry.topRight,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(model.iconPath),
                  ),
                ),
                SizedBox(height: 10.0.h),
                Text(
                  model.title,
                  //style: AppStyless.font14PrimaryRegular,
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
