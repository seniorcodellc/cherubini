import 'package:cherubini/core/widgets/h_line.dart';
import 'package:cherubini/exports.dart';
import 'package:cherubini/features/technican_management/data/models/technician_response_model/technician_response_model.dart';
import 'package:cherubini/features/technican_management/presentation/manager/technician_cubit.dart';
import 'package:cherubini/features/technican_management/presentation/widgets/show_details_button.dart';

import '../../../../core/enums/status_enums.dart';
import 'custom_info_widget.dart';

class TechItemWidget extends StatelessWidget {
  TechItemWidget({super.key, required this.item});
  final TechnicianModel item;
  Status? status;

  _buildAnswerQuestion(Status status) => status == Status.PENDING
      ? Container(
          width: 311,
          margin: getMargin(top: 16.h),
          padding: getPadding(horizontal: 16.w, vertical: 12.h),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Color(0x4D000000), // نفس #0000004D
                offset: Offset(0, 1),
                blurRadius: 2,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomSVGImage(asset: AppAssets.questionMark),
                  8.hs,
                  Text(
                    AppStrings.verificationQuestion.trans,
                    style: getRegularTextStyle(
                      fontSize: 14.sp,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              8.vs,
              Text(
                item.answer.validate,
                style: getRegularTextStyle(
                  fontSize: 14.sp,
                  color: AppColors.grayHint,
                ),
              ),
            ],
          ),
        )
      : SizedBox.shrink();
  @override
  Widget build(BuildContext context) {
    status = getStatus(item.status!);
    return Container(
      padding: getPadding(vertical: 16.h, horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          _buildProfileWidget(),
          24.vs,
          CustomInfoWidget(asset: AppAssets.phone, info: item.phone.validate),
          10.vs,
          CustomInfoWidget(asset: AppAssets.email, info: item.email.validate),
          20.vs,
          HLine(),
          _buildDetails(),
          HLine(),
          _buildAnswerQuestion(status!),
          24.vs,

          _buildActionButtons(context),
        ],
      ),
    );
  }

  _buildActionButtons(BuildContext context) {
    switch (status) {
      case Status.PENDING:
        return Row(
          children: [
            Expanded(
              child: CustomButton(
                text: AppStrings.accept.trans,
                onPressed: () {
                  context.read<TechnicianCubit>().activateOrReject(item, 1);
                },
                backgroundColor: AppColors.primaryColor,
                svgIconPath: AppAssets.accept,
                borderColor: AppColors.primaryColor,
                height: 42.h,
                width: 146.w,
              ),
            ),
            14.hs,
            Expanded(
              child: CustomButton(
                text: AppStrings.reject.trans,
                onPressed: () {
                  context.read<TechnicianCubit>().activateOrReject(item, 3);
                },
                backgroundColor: AppColors.red,
                svgIconPath: AppAssets.cancel,
                borderColor: AppColors.red,
                height: 42.h,
                width: 146.w,
              ),
            ),
          ],
        );
      case Status.REJECTED:
        return CustomButton(
          text: AppStrings.reactiveTechnician.trans,
          onPressed: () {
            context.read<TechnicianCubit>().reactivate(item);
          },
          backgroundColor: AppColors.primaryColor,
          svgIconPath: AppAssets.accept,
          borderColor: AppColors.primaryColor,
          height: 42.h,
          width: 146.w,
        );
      case Status.ACTIVE:
        return CustomButton(
          text: AppStrings.suspendTechnician.trans,
          onPressed: () {
            context.read<TechnicianCubit>().suspend(item);
          },
          backgroundColor: AppColors.primaryColor,
          svgIconPath: AppAssets.accept,
          borderColor: AppColors.primaryColor,
          height: 42.h,
          width: 146.w,
        );
      case Status.SUSBENDED:
        return CustomButton(
          text: AppStrings.reactiveTechnician.trans,
          onPressed: () {
            context.read<TechnicianCubit>().reactivate(item);
          },
          backgroundColor: AppColors.red,
          svgIconPath: AppAssets.cancel,
          borderColor: AppColors.red,
          height: 42.h,
          width: 146.w,
        );
      default:
        SizedBox.shrink();
    }
  }

  _buildDetails() => Padding(
    padding: getPadding(horizontal: 8.0.w, bottom: 14.h, top: 6.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              item.points.toString(),
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: AppColors.accentColor,
              ),
            ),
            8.vs,
            Text(
              AppStrings.point.trans,
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: AppColors.subTitleColor,
              ),
            ),
          ],
        ),
        20.hs,
        VLine(height: 50.0.h),
        Column(
          children: [
            Text(
              item.totalReadings.toString(),
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: AppColors.accentColor,
              ),
            ),
            8.vs,
            Text(
              AppStrings.scanOperation.trans,
              style: getRegularTextStyle(
                fontSize: 14.sp,
                color: AppColors.subTitleColor,
              ),
            ),
          ],
        ),

      ],
    ),
  );
  _buildProfileWidget() => Row(
    children: [
      CustomSVGImage(
        asset: status == Status.ACTIVE
            ? AppAssets.activeProfile
            : AppAssets.waitingProfile,
        height: 60.h,
        width: 60.w,
      ),
      12.hs,
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name.validate,
            style: getRegularTextStyle(
              fontSize: 14.sp,
              color: AppColors.primaryColor,
            ),
          ),
          8.vs,
          Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(20.0.r),
              border: Border.all(
                color: status == Status.ACTIVE
                    ? AppColors.green
                    : AppColors.red,
                width: 1.5,
              ),
            ),
            child: Padding(
              padding: getPadding(vertical: 2.0.h, horizontal: 16.0.w),
              child: Row(
                children: [
                  CustomSVGImage(
                    asset: AppAssets.check,
                    color: status == Status.ACTIVE
                        ? AppColors.green
                        : AppColors.red,
                    height: 18.0.h,
                    width: 18.0.w,
                    matchTextDirection: false,
                  ),
                  8.hs,
                  Text(
                    status == Status.ACTIVE
                        ? AppStrings.active.trans
                        : status == Status.REJECTED
                        ? AppStrings.inActive.trans
                        : AppStrings.waitingTech.trans,
                    style: getRegularTextStyle(
                      fontSize: 15.sp,
                      color: status == Status.ACTIVE
                          ? AppColors.green
                          : AppColors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
