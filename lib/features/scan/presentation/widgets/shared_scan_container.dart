import 'package:cherubini/exports.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanContainer extends StatelessWidget {
  const ScanContainer({
    super.key,
    required this.controller,
    required this.onDetect,
    this.scannedResult,
  });

  final MobileScannerController controller;
  final void Function(BarcodeCapture) onDetect;
  final String? scannedResult;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 30.0.w),
      child: DottedBorder(
        color: AppColors.borderColor3,
        strokeWidth: 3.0.w,
        borderType: BorderType.RRect,
        radius: Radius.circular(20.0.r),
        dashPattern: const [8, 4],
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0.r),
          child: Container(
            color: AppColors.mutedBlue,
            height: 300.h,
            child: Stack(
              fit: StackFit.expand,
              children: [
                MobileScanner(
                  controller: controller,
                  onDetect: onDetect,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}