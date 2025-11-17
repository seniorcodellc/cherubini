import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/shared_scan_container.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  bool isScanning = false;
  String? scannedData;

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      title: AppStrings.scanBarCode.trans,
      appBarBackgroundColor: AppColors.bgColor,

      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            150.vs,
            _buildBeforeScanWidget,
            150.vs,
            CustomButton(
              text: AppStrings.startScan.trans,
              onPressed: () {
                checkCameraPermissionAndDoOperation(
                  context,
                  onSuccess: () {
                    isScanning = true;

                    setState(() {});
                  },
                );
              },
              svgIconPath: AppAssets.scan,
              height: 58.h,
            ),
          ],
        ),
      ),
    );
  }

  get _buildBeforeScanWidget => isScanning.isTrue
      ? SizedBox(
          height: 311.h,
          width: width,
          child: MobileScanner(
            onDetect: (barcodes) {
              final String? code = barcodes.barcodes.first.rawValue;
              if (code != null) {
                setState(() {
                  scannedData = code;
                  isScanning = false;
                });
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('QR Code: $code')));
              }
            },
          ),
        )
      : Padding(
          padding: getPadding(horizontal: 16.0.w),
          child: DottedBorder(
            color: AppColors.borderColor3,
            strokeWidth: 3.0.w,
            borderType: BorderType.RRect,
            radius: Radius.circular(20.0.r),
            dashPattern: const [8, 4],
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.mutedBlue,
                borderRadius: BorderRadius.circular(20.0.r),
              ),
              child: Padding(
                padding: getPadding(
                  horizontal: 28.0.w,
                  top: 50.0.h,
                  bottom: 40.0.h,
                ),
                child: Stack(
                  children: [
                    CustomSVGImage(asset: AppAssets.cameraFrame),
                    Padding(
                      padding: getPadding(horizontal: 24.0.w,vertical: 15.0.h),
                      child: Column(
                        children: [
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: CustomSVGImage(asset: AppAssets.scanCamera),
                          ),
                          8.vs,
                          Text(AppStrings.cameraBarcode,style: getRegularTextStyle(fontSize: 16,color: AppColors.subTitleColor),)
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        );
}
