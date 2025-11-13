import 'dart:ui' as ui;

import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:flutter/rendering.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/product_list_section.dart';
import '../widgets/warranty_container.dart';
import '../widgets/warranty_produce.dart';

GlobalKey _warrantyKey = GlobalKey();

class MerchantWarrantyScreen extends StatelessWidget {
  const MerchantWarrantyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: _warrantyKey,
      child: CustomBackground(
        appBar: CustomAppbar(title: AppStrings.warrantyCertificate),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: getPadding(horizontal: 16.0.w),
                child: Column(
                  children: [
                    35.vs,
                    CreateWarrantyContainer(),
                    24.vs,
                    ProductListSection(isMerchant: true),
                    30.vs,
                    WarrantyProduce(),
                    40.vs,
                    CustomScanButton(
                      text: AppStrings.printWarranty,
                      icon: AppAssets.print,
                      onPressed: () {
                        // Step 3 will be called here
                      },
                    ),
                    20.vs,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Uint8List> captureWidget(GlobalKey key) async {
    RenderRepaintBoundary boundary =
        key.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 3.0); // High resolution
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }
}
