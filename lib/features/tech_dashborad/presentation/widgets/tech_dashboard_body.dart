import 'package:cherubini/core/widgets/shared_dashboard_last_scan_text_widget.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_dashboard_scan_list.dart';
import 'package:cherubini/features/tech_dashborad/presentation/widgets/tech_quick_procedures.dart';
import '../../../../config/data_generic/presentation/widgets/generic_data_view.dart';
import '../../../../core/profile/data/models/profile_response_model.dart';
import '../../../../core/profile/presentation/manager/profile_cubit.dart';
import '../../../../exports.dart';
import '../../../merchant_dashboard/presentation/widgets/dashboard_points.dart';

class TechDashboardBody extends StatelessWidget {
  const TechDashboardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GenericDataView<ProfileCubit, ProfileModel>.fromState(
          buildLoadedWidgetWithState: (state) {
            if (state is LoadedState<ProfileModel>) {
              return DashboardPoints(profile: state.data);
            } else {
              return DashboardPoints();
            }
          },
        ),
        Padding(
          padding: getPadding(horizontal: 16.0.w, bottom: 8.0.h, top: 14.h),
          child: Text(
            AppStrings.quickProcedures,
            style: getBoldTextStyle(
              fontSize: 16.sp,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        8.vs,
        TechQuickProcedures(),
      ],
    ),
        Padding(
          padding: getPadding(top: 24.0.h, bottom: 8.0.h, horizontal: 16.0.w),
          child: SharedDashboardLastScanTextWidget(),
        ),
        TechDashboardScanList(),
      ],
    );
  }
}
