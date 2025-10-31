import 'package:cherubini/exports.dart';

class CustomScanButton extends StatelessWidget {
  const CustomScanButton({super.key, required this.text, required this.icon});
final String text ;
final String icon ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.0.w),
      child: CustomButton(text: text, onPressed: (){Routes.successScanRoute.moveTo();},svgIconPath: icon,height: 58.h,),
    );

  }
}
