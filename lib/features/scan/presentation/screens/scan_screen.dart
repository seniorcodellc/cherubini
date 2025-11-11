import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/scan/presentation/widgets/result_scan_widget.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_scan_button.dart';
import '../widgets/shared_scan_container.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  bool _isScanning = false;
  final MobileScannerController _controller = MobileScannerController();

  void _startScanning() {
    setState(() => _isScanning = true);
  }

  void _stopScanning() {
    setState(() => _isScanning = false);
  }

  void _onDetect(BarcodeCapture capture) {
    final List<Barcode> barcodes = capture.barcodes;
    if (barcodes.isEmpty) {
      Routes.errorScanRoute.moveTo();
    }

    final String? code = barcodes.first.rawValue;
    if (code == null) return;

    _controller.stop();
    _stopScanning();
     Routes.successScanRoute.moveTo();
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('QR Code Found'),
        content: SelectableText(code),
        actions: [
          TextButton(
            onPressed: () => Routes.scanRoute.popScreen(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      appBar: CustomAppbar(title: AppStrings.scanCode),
      child: Column(
        children: [
          150.vs,
          if (!_isScanning) ...[
            ResultScan(asset: AppAssets.cameraScan),
            150.vs,
            Padding(
              padding: getPadding(horizontal: 16.0.w),
              child: CustomScanButton(
                text: AppStrings.startScan,
                icon: AppAssets.scan,
                onPressed: _startScanning,
              ),
            ),
          ],
          if (_isScanning)
            Expanded(
              child: Stack(
                children: [
                ScanContainer(controller: _controller, onDetect: _onDetect),
                  Positioned(
                    top: 8.h,
                    right: 35.w,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white, size: 32),
                      onPressed: _stopScanning,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }


}

