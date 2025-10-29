import '../../../../exports.dart';

class SettingsGrayCircle extends StatelessWidget {
  const SettingsGrayCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {
          Routes.operationsLog.moveTo();
        },
        child: Container(
          width: 50.w,
          height: 50.h,
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: CustomSVGImage(asset: AppAssets.settings, fit: BoxFit.none),
        ),
      ),
    );
  }
}
