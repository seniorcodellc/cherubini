import 'package:cherubini/exports.dart';

class SharedPhoneIcon extends StatelessWidget {
  const SharedPhoneIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSVGImage(
      asset: AppAssets.phone,
      width: 20,
      height: 20,
      fit: BoxFit.none,
    );
  }
}
