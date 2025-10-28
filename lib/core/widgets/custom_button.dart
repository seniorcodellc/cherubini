// ignore_for_file: deprecated_member_use

import '../../exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.onPressed,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.svgIconPath,
    this.height,
    this.style,
  });
  final String text;
  final double? borderRadius;
  final String? svgIconPath;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final double? height;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height ?? 56.h,
      color: backgroundColor ?? AppColors.primaryColor,
      elevation: 0,
      highlightElevation: 0,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius?.r ?? 20.r),
        side: BorderSide(color: borderColor ?? AppColors.primaryColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svgIconPath != null ? 10.hs : 0.hs,
          Center(
            child: Text(
              text,
              style:
                  style ??
                  getSemiBoldTextStyle(
                    fontSize: 16,
                    color: textColor ?? AppColors.white,
                  ),
            ),
          ),
          svgIconPath != null ? SizedBox(width: 8.w) : const SizedBox(width: 0),
          svgIconPath != null
              ? SvgPicture.asset(
                  svgIconPath!,
                  width: 24.w,
                  height: 24.w,
                  color: textColor ?? AppColors.white,
                )
              : const SizedBox(width: 0),
        ],
      ),
    );
  }
}
