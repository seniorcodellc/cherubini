import 'package:cherubini/exports.dart';
import 'package:cherubini/features/warranty/presentation/widgets/warranty_container.dart';
import 'package:cherubini/features/warranty/presentation/widgets/warranty_produce.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import 'custom_product_details_warranty.dart';

class WarrantyBody extends StatefulWidget {
  const WarrantyBody({super.key});

  @override
  State<WarrantyBody> createState() => _WarrantyBodyState();
}

class _WarrantyBodyState extends State<WarrantyBody> {
  int productCount = 1;

  void _addProduct() {
    setState(() {
      productCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: getPadding(horizontal: 16.0.w),
            child: Column(
              children: [
                35.vs,
                const CreateWarrantyContainer(),
                24.vs,
                ...List.generate(
                  productCount,
                      (index) => Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'المنتجات',
                            style: getBoldTextStyle(
                              fontSize: 14.sp,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          CustomButton(
                            text: 'إضافة منتج',
                            textColor: AppColors.primaryColor,
                            onPressed: _addProduct,
                            borderColor: AppColors.borderColor3,
                            backgroundColor: AppColors.bgColor,
                            svgIconPath: AppAssets.addProduct,
                            height: 38.h,
                          ),
                        ],
                      ),
                      16.vs,
                      CustomProductDetailsWarranty(),
                      16.vs,
                    ],
                  ),
                ),
                40.vs,
                const WarrantyProduce(),
                40.vs,
                CustomScanButton(
                  text: 'طباعة شهادة الضمان',
                  icon: AppAssets.print,
                ),
                20.vs, // Optional: bottom padding
              ],
            ),
          ),
        ),
      ],
    );
  }
}