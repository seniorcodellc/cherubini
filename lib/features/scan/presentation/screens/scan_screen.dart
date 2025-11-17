import 'package:cherubini/config/data_generic/presentation/widgets/generic_data_view.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/data/models/qr_code_model.dart';
import 'package:cherubini/features/scan/presentation/managers/qrcode_cubit.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/bar_code_details.dart';
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
      title: AppStrings.scanCode,

      child: Padding(
        padding: getPadding(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCameraScan,
            150.vs,        /*GenericDataView<QrCubit,List<QrCodeModel>>
              (buildLoadedWidget: (data) => QrCodeDetailsModel(qrCodeModel: data,),),*/

            CustomButton(
              text: AppStrings.startScan,
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

  get _buildCameraScan => isScanning.isTrue
      ? SizedBox(
          height: 311.h,
          width: width,
          child: MobileScanner(
            onDetect: (barcodes) {
              final Barcode? barcode = barcodes.barcodes.first;
              if (barcode.isNotNull) {
                setState(() {
                  scannedData = barcode!.displayValue.validate;
                  print("data55555555555555"+scannedData.toString());
                  isScanning = false;
                  context.read<QrCubit>().readQrCode(scannedData!);
                });
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
              decoration: BoxDecoration(color: AppColors.mutedBlue, borderRadius: BorderRadius.circular(20.0.r)),
              child: Padding(
                padding: getPadding(horizontal: 28.0.w, top: 50.0.h, bottom: 40.0.h),
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: CustomSVGImage(asset: AppAssets.cameraScan),
                ),
              ),
            ),
          ),
        );
}
