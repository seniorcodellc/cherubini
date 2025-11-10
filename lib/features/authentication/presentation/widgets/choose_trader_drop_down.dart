import '../../../../config/errors/widgets/error_text.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            boxShadow: [
              BoxShadow(
                color: AppColors.shadowColor.withValues(alpha: 0.05),
                blurRadius: 4.r,
                spreadRadius: 0.r,
                offset: Offset(0, 1),
              ),
              BoxShadow(
                color: AppColors.shadowColor.withValues(alpha: 0.10),
                blurRadius: 4.r,
                spreadRadius: 0.r,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: DropdownButtonFormField(
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
        ),
        BlocBuilder<ErrorCubit, CubitStates>(
          builder: (context, state) {
            return ErrorText(
              showError: context.read<ErrorCubit>().errors.contains(
                Errors.CHOOSE_MERCHANT_ERROR,
              ),
              text: getError[Errors.CHOOSE_MERCHANT_ERROR],
            );
          },
        ),
      ],
    );
  }
}
