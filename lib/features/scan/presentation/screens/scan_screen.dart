import 'package:cherubini/config/data_generic/presentation/widgets/generic_data_view.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/data/models/qr_code_model.dart';
import 'package:cherubini/features/scan/presentation/managers/qrcode_cubit.dart';
import 'package:cherubini/features/scan/presentation/widgets/shared_scan_container.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../widgets/bar_code_details.dart';

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
      title: AppStrings.scanBarcodeTitle.trans,
      child: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: constraints.maxHeight,
              minHeight: constraints.maxHeight,
              maxHeight: double.infinity,
            ),
            child: Padding(
              padding: getPadding(horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      40.vs,
                      _buildBeforeScanWidget,
                      41.vs,
                      GenericDataView<QrCodeCubit, dynamic>.fromState(
                        buildLoadedWidgetWithState: (state) {
                          print("ssssssssssss $state");
                          if (state is LoadedState<QrCodeModel>) {
                            return QrCodeDetailsWidget(qrCodeModel: state.data);
                          }
                          return SizedBox.shrink();
                        },
                      ),
                    ],
                  ),
                  GenericDataView<QrCodeCubit, dynamic>.fromState(
                    buildLoadedWidgetWithState: (state) => CustomButton(
                      text: state is LoadedState<QrCodeModel>
                          ? AppStrings.scanAnotherBarcode.trans
                          : AppStrings.startScan.trans,
                      onPressed: () {
                        if (state is LoadedState<QrCodeModel>) {
                          context.read<QrCodeCubit>().reset();
                        } else {
                          checkCameraPermissionAndDoOperation(
                            context,
                            onSuccess: () {
                              isScanning = true;
                              setState(() {});
                            },
                          );
                        }
                      },
                      svgIconPath: AppAssets.scan,
                      height: 58.h,
                    ),
                  ),
                  31.vs,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  get _buildBeforeScanWidget => isScanning.isTrue
      ? SizedBox(
          height: 311.h,
          width: MediaQuery.of(context).size.width,
          child: MobileScanner(
            onDetect: (barcodes) {
              final String? code = barcodes.barcodes.first.rawValue;
              if (code != null) {
                setState(() {
                  scannedData = code;
                  isScanning = false;
                });
                context.read<QrCodeCubit>().readQrCode(
                  "CMM45101700E;148253000101G",
                );
              }
            },
          ),
        )
      : GenericDataView<QrCodeCubit, dynamic>.fromState(
          buildLoadedWidgetWithState: (state) {
            if (state is LoadedState<QrCodeModel>) {
              if (state.data.status.isTrue) {
                return SharedScanContainer(
                  asset: AppAssets.cameraSuccess,
                  title: AppStrings.scanSuccess.trans,
                );
              } else {
                return SharedScanContainer(
                  asset: AppAssets.cameraError,
                  title: AppStrings.scanError.trans,
                );
              }
            }
            return SharedScanContainer(
              asset: AppAssets.scanCamera,
              title: AppStrings.cameraBarcode.trans,
            );
          },
        );
}
