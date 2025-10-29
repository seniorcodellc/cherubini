import '../../../../exports.dart';

class GovernmentPlaceDropdownButton extends StatelessWidget {
  const GovernmentPlaceDropdownButton({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164.w,
      height: 48.h,
      child: DropdownButtonFormField(
        icon: CustomSVGImage(
          asset: AppAssets.arrow,
          fit: BoxFit.none,
          color: AppColors.subTitleColor,
        ),
        hint: Text(
          hint,
          style: getRegularTextStyle(color: AppColors.subTitleColor),
        ),
        dropdownColor: AppColors.white,
        isExpanded: true,
        decoration: InputDecoration(
          fillColor: AppColors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide.none,
          ),
        ),
        items: [],
        onChanged: (value) {},
      ),
    );
  }
}
