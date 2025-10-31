import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/presentation/widgets/bar_code_row.dart';

class BarCodeDetails extends StatelessWidget {
  const BarCodeDetails({super.key, required this.isSuccess});
 final bool isSuccess ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getPadding(horizontal: 16.0.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2,
            blurRadius: 6,
          ),
        ],
      ),
      child: Column(
        children: [
          BarCodeRow(title: 'الرقم التسلسلي', value: 'SN123456789'),
          HLine(width: 311.w,),
          BarCodeRow(title: 'اسم المنتج', value: 'ثلاجة سامسونج 20 قدم'),
          HLine(width: 311.w,),
          isSuccess?
          BarCodeRow(title: 'النقاط المكتسبة', value: '+150') :
          Container(
            height: 82.h,
            margin: getPadding(horizontal: 16.0.w,vertical: 12.0.h),
            decoration:BoxDecoration(
              color: AppColors.lightOrange,
              borderRadius: BorderRadius.circular(20.0.r),
              border: Border.all(width: 1,color: AppColors.borderColor4),
            ),
            child: Padding(
              padding: getPadding(all: 14.0.h),
              child: Text(
                'هذا المنتج غير مسجل في النظام. تم إرسال \n تنبيه للمسؤول مع بيانات الفني والتاجر.',
              textAlign: TextAlign.right,
              style: getRegularTextStyle(fontSize: 12.sp,color: AppColors.orange),),
            ),
          ),
        ],
      ) ,
    );
  }
}
