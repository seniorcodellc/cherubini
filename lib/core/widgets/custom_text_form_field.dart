import '../../exports.dart';

class CustomTextFormField extends StatefulWidget {
  CustomTextFormField({
    super.key,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.prefixIcon,
    this.style,
    this.suffixIcon,
    this.radiusOfContainer,
    this.otherSuffixSvgIcon,
    this.controller,
    this.isPassword = false,
    this.maxLines,
    this.padding,
    this.maxLength,
    this.onChange,
    this.enabled,
    this.width,
    this.suffix,
    this.readOnly=false,
    this.height,
    this.textAlign = TextAlign.start,
    this.textDirection,
    this.onTap,
    this.suffixText,
    this.inputFormatters,
    this.backgroundColor,
    this.prefixIconConstraints,
  });
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  bool obscureText;
  bool isPassword = false;
  TextStyle? style = getRegularTextStyle(fontSize: 12, color: AppColors.taupeGray);
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLength;
  final double? height;
  final String? suffixText;
  final bool readOnly;
  final double? width;
  final TextAlign textAlign;
  final Widget? otherSuffixSvgIcon;
  final double? radiusOfContainer;
  final EdgeInsetsGeometry? padding;
  final int? maxLines;
  final bool? enabled;
  final Widget? suffix;
  final Function(String)? onChange;
  void Function()? onTap;
  TextDirection? textDirection;
  BoxConstraints? prefixIconConstraints;
  final Color? backgroundColor;
  List<TextInputFormatter>? inputFormatters;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}


class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  void initState() {
    if (widget.isPassword.isTrue) {
      widget.obscureText=true;
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        obscureText: widget.obscureText,
        readOnly: widget.readOnly ,
        enabled: widget.enabled ?? true,
        validator: widget.validator,
        textAlign: widget.textAlign,
        maxLength: widget.maxLength,
        onChanged: widget.onChange,
        onTap: widget.onTap,
        inputFormatters: widget.inputFormatters,
        maxLines: widget.maxLines ?? 1,
        cursorColor: AppColors.primaryColor,
        autocorrect: true,
        textDirection: widget.textDirection,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        style: getRegularTextStyle(fontSize: 16, color: AppColors.darkSlateGray),
        decoration: InputDecoration(
          contentPadding: widget.padding,
          hintText: widget.hintText,
          hintStyle: widget.style,
          fillColor: widget.backgroundColor ?? Colors.transparent,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 8.r)),
            borderSide: BorderSide(color: AppColors.black.withValues(alpha: 0.4), width: 1.w),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 8.r)),
            borderSide: BorderSide(color: AppColors.black, width: 1.w),
          ),
          /*     border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 12.r)),
            borderSide: BorderSide(color: AppColors.black.withValues(alpha: 0.4)),
          ),*/
          /*
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 12.r)),
            borderSide: const BorderSide(color: AppColors.lightConcrete),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 12.r)),
            borderSide: const BorderSide(color: AppColors.lightConcrete),
          ),
         ,*/
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 8.r)),
            borderSide: BorderSide(color: AppColors.brown.withValues(alpha: 0.4), width: 1.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(widget.radiusOfContainer ?? 8.r)),
            borderSide: BorderSide(color: AppColors.brown.withValues(alpha: 0.4), width: 1.w),
          ),
          errorStyle: getSemiBoldTextStyle(color: AppColors.brown, fontSize: 12),
          prefixIconConstraints: widget.prefixIconConstraints,
          prefixIcon: widget.prefixIcon,
          suffix: widget.suffix,
          suffixText: widget.suffixText,
          //  suffixIconConstraints: BoxConstraints(maxHeight: 20, maxWidth: 40, minWidth: 40),
          suffixIcon: widget.suffixIcon ?? (widget.isPassword
              ? GestureDetector(
                  onTap: () {
                    print("tapp");
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  child: widget.obscureText
                      ? Icon(Icons.visibility_off, color: AppColors.liGray)
                      : Icon(Icons.visibility_rounded, color: AppColors.liGray),
                )
              : null),
        ),
      ),
    );
  }
}
