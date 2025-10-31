import '../../../../exports.dart';

class SharedDoneOrNotContainer extends StatelessWidget {
  const SharedDoneOrNotContainer({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.borderColor,
  });
  final String text;
  final Color textColor;
  final Color bgColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 91.w,
      height: 26.h,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: borderColor),
      ),
      child: Center(
        child: Text(text, style: getRegularTextStyle(color: textColor)),
      ),
    );
  }
}
