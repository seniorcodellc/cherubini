import 'package:flutter/material.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/warranty/presentation/widgets/warranty_container.dart';
import 'package:cherubini/features/warranty/presentation/widgets/warranty_produce.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/product_list_section.dart';
import 'client_details.dart';

class TechWarrantyBody extends StatelessWidget {
  const TechWarrantyBody({super.key});

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
                ClientDetails(),
                24.vs,
                const ProductListSection(isMerchant: false,),
                30.vs,
                const WarrantyProduce(),
                40.vs,
                CustomScanButton(
                  text: 'طباعة شهادة الضمان',
                  icon: AppAssets.print,
                ),
                20.vs,
              ],
            ),
          ),
        ),
      ],
    );
  }
}