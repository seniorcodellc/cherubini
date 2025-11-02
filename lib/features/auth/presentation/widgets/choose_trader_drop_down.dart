import '../../../../exports.dart';

class ChooseTraderDropDown extends StatefulWidget {
  const ChooseTraderDropDown({super.key});

  @override
  State<ChooseTraderDropDown> createState() => _ChooseTraderDropDownState();
}

class _ChooseTraderDropDownState extends State<ChooseTraderDropDown> {
  final List<String> traders = [
    AppStrings.merchantOneAr,
    AppStrings.merchantTwoAr,
    AppStrings.merchantThreeAr,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.subTitleColor.withOpacity(0.1),
            blurRadius: 4.r,
          ),
        ],
      ),
      child: DropdownButtonFormField(
        validator: (text) =>
            text.validateName.isFalse ? AppStrings.nameError : null,
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
        hint: Text("اختر التاجر المرتبط به ", style: getRegularTextStyle()),
        icon: CustomSVGImage(
          asset: AppAssets.arrow,
          fit: BoxFit.none,
          color: AppColors.subTitleColor,
        ),
        items: traders.map((trader) {
          return DropdownMenuItem(value: trader, child: Text(trader));
        }).toList(),
        onChanged: (value) {},
      ),
    );
  }
}
