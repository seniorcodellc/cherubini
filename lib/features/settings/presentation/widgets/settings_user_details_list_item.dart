
import '../../../../exports.dart';

class SettingsUserDetailsListItem extends StatelessWidget {
  const SettingsUserDetailsListItem({super.key, required this.model});
  final ItemImageModel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(horizontal: 16.w, vertical: 11.h),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.mutedBlue,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: CustomSVGImage(
              asset: model.image!,
              fit: BoxFit.none,
              color: AppColors.primaryColor,
            ),
          ),
          8.hs,
          Text(
            model.name.validate.trans,
            style: getRegularTextStyle(
              fontSize: 16,
              color: AppColors.primaryColor,
            ),
          ),
          Spacer(),
          CustomSVGImage(asset: AppAssets.arrowLeft, color: AppColors.grayHint),
        ],
      ),
    );
  }
}
