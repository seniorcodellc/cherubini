import 'package:cherubini/exports.dart';

class CustomScanButton extends StatelessWidget {
  const CustomScanButton({super.key, required this.text, required this.icon, required this.onPressed});
final String text ;
final String icon ;

 final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButton(text: text, onPressed:onPressed ,svgIconPath: icon,height: 58.h,);

  }
}
