import 'package:cherubini/core/profile/presentation/manager/profile_cubit.dart';
import 'package:cherubini/core/widgets/custom_appbar.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/authentication/presentation/widgets/custom_login_signup_textfield_text.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../exports.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor: AppColors.bgColor,
      showAppbar: true,
      appBar: CustomAppbar(title: AppStrings.editProfile.trans),
      child: Padding(
        padding: getPadding(horizontal: 16.w, top: 20.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTitleAndField(
                      text: AppStrings.email.trans,
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: context
                            .read<ProfileCubit>()
                            .model
                            ?.email
                            .validate,
                        prefixIcon: CustomSVGImage(
                          asset: AppAssets.email,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.phoneNum.trans,
                      child: CustomTextFormField(
                        hintText: context
                            .read<ProfileCubit>()
                            .model
                            ?.phone
                            .validate,
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        prefixIcon: CustomSVGImage(
                          asset: AppAssets.phone,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.fullName.trans,
                      child: CustomTextFormField(
                        hintText: context
                            .read<ProfileCubit>()
                            .model
                            ?.name
                            .validate,
                        prefixIcon: CustomSVGImage(
                          asset: AppAssets.profile,
                          fit: BoxFit.none,
                        ),
                        controller: nameController,
                      ),
                    ),
                    16.vs,
                    CustomTitleAndField(
                      text: AppStrings.companyName.trans,
                      child: CustomTextFormField(
                        controller: companyNameController,
                        hintText: context
                            .read<ProfileCubit>()
                            .model
                            ?.name
                            .validate,
                        prefixIcon: CustomSVGImage(
                          asset: AppAssets.company,
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    32.vs,
                    CustomButton(
                      text: AppStrings.edit.trans,
                      onPressed: () {
                        // checkStringError(context, emailController.text, Errors.EMAIL_ERROR);
                        // checkStringError(context, phoneController.text, Errors.PHONE_ERROR);
                        // checkStringError(context, nameController.text, Errors.NAME_ERROR);
                        // checkStringError(context, companyNameController.text, Errors.NAME_ERROR);
                        if (dontHaveErrors(context)) {}
                        if (_formKey.currentState!.validate().isTrue) {}
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
