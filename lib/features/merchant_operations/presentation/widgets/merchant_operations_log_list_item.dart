import 'package:cherubini/core/widgets/custom_divider.dart';
import 'package:cherubini/core/widgets/second_shared_custom_button.dart';
import 'package:cherubini/features/merchant_operations/presentation/widgets/tech_name.dart';
import 'package:cherubini/features/tech_operations_log/data/models/operations_log_model.dart';
import 'package:cherubini/core/widgets/operations_log_card_header.dart';
import 'package:cherubini/core/widgets/operations_log_card_prods_header.dart';
import 'package:cherubini/core/widgets/operations_log_card_prods_list.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../../../exports.dart';

class MerchantOperationsLogListItem extends StatelessWidget {
  const MerchantOperationsLogListItem({super.key, required this.model});
  final OperationsLogModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: 24.h),
      child: Container(
        width: 343.w,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(20.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 2.r,
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.1),
              spreadRadius: 0.r,
              blurRadius: 2.r,
              offset: Offset(0, 1.h),
            ),
          ],
        ),
        child: Padding(
          padding: getPadding(horizontal: 16.h, vertical: 24.w),
          child: Column(
            children: [
              OperationsLogCardHeader(model: model),
              16.vs,
              CustomDivider(
                width: 311.w,
                height: 0.3.h,
                color: AppColors.grayHint,
              ),
              TechName(),
              CustomDivider(
                width: 311.w,
                height: 0.3.h,
                color: AppColors.grayHint,
              ),
              16.vs,
              OperationsLogCardProdsHeader(model: model),
              16.vs,
              OperationsLogCardProdsList(model: model),
              16.vs,
              SecondSharedCustomButton(
                text: AppStrings.publishWarranty,
                onPressed: () {
                  printWarrantyCertificate();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> printWarrantyCertificate() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (context) => pw.Center(
          child: pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Text(
                'Warranty Certificate',
                style: pw.TextStyle(
                  fontSize: 28,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 20),
              pw.Text('Customer Name: "laila"'),
              pw.Text('Product: "fridge"'),
              pw.Text('Warranty Period: 9 months'),
              pw.SizedBox(height: 20),
              pw.Text(
                'This certificate confirms that the above product is covered under warranty as per company policy.',
                textAlign: pw.TextAlign.center,
              ),
              pw.SizedBox(height: 40),
              pw.Text('Issued on: ${DateTime.now().toLocal()}'),
            ],
          ),
        ),
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
    );
  }
}
