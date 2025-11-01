import 'package:cherubini/exports.dart';
import 'package:cherubini/features/warranty/presentation/widgets/warranty_custom_text_field.dart';

class CustomProductDetailsWarranty extends StatelessWidget {
  const CustomProductDetailsWarranty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            spreadRadius: 2.r,
            blurRadius: 6.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Padding(
        padding: getPadding(horizontal: 16.0.w),
        child: Column(
          children: [
            Padding(
              padding: getPadding(top: 16.0.h),
              child: Row(
                children: [
                  CustomSVGImage(asset: AppAssets.info),
                  4.hs,
                  Text(
                    'منتج',
                    style: getRegularTextStyle(
                      fontSize: 14.sp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            WarrantyCustomTextField(hint: 'الرقم التسلسلي',),
            WarrantyCustomTextField(hint: 'اسم المنتج',),
            WarrantyCustomTextField(hint: 'تاريخ القراءة',),
            8.vs,
          ],
        ),
      ),
    );
  }
}
