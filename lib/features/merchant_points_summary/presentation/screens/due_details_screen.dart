import 'package:cherubini/core/history/data/models/history_response_model.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/merchant_points_summary/data/models/cash_reward_response_model.dart';
import 'package:cherubini/features/merchant_points_summary/presentation/managers/due_pay_cubit.dart';
import 'package:cherubini/features/merchant_points_summary/presentation/widgets/due_details_item.dart';

class DuesDetailsScreen extends StatelessWidget {
  List<DueDetailsModel>? dueDetailsList;
  num? dueId;
  DuesDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? data = getArguments(context);
    dueDetailsList = data!['dueDetails'];
    dueId = data['dueId'];

    return CustomBackground(
      title: AppStrings.dueDetails.trans,
      floatingActionButton: Container(
        width: width,
        padding: getPadding(bottom: 30, horizontal: 16.w),
        child: BlocBuilder<DuePayCubit, CubitStates>(
          builder: (context, state) => FloatingActionButton(
            backgroundColor: AppColors.primaryColor,
            onPressed: () {
              context.read<DuePayCubit>().pay(dueId!);
            },
            child: Text(
              "${AppStrings.pay.trans} ${context.read<DuePayCubit>().count}",
              style: getBoldTextStyle(color: AppColors.white),
            ),
          ),
        ),
      ),
      /*        CustomButton(
          height: 50.h,
          width: 50.w,
          text: AppStrings.pay, onPressed: () {

        },),*/
      child: ListView.separated(
        itemBuilder: (context, index) =>
            DueDetailsItem(model: dueDetailsList![index]),
        physics: BouncingScrollPhysics(),
        padding: getPadding(horizontal: 16.w, top: 30.h, bottom: 40.h),

        separatorBuilder: (context, index) => 16.vs,
        itemCount: dueDetailsList!.length,
      ),
    );
  }
}
