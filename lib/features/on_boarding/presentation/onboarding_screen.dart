import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../exports.dart';
import 'managers/onboarding_manager_cubit.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  bool isFirstPage = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: 16.ph,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          65.vs,
          isFirstPage.isTrue ? _buildSkipButton : 43.vs,
   /*       DetailsOnboardingSection(
            onBoardingItems: onBoardingItems,
            pageController: pageController,
          ),
          isFirstPage.isTrue ? buildGetStartedButton : buildNextButton,*/
        ],
      ),
    ));
  }

  get _buildSkipButton => SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.25,
      height: 43.h,
      child: CustomButton(
        text: AppStrings.skip,
        onPressed: () {
          context.read<OnboardingManagerCubit>().cachedNewInstall();
        },
        backgroundColor: AppColors.lightBrown.withOpacity(0.3),
        borderColor: AppColors.transparent,
        textColor: AppColors.black,
        style: getRegularTextStyle(fontSize: 12),
      ));

/*  get buildGetStartedButton => CustomButton(
        text: AppStrings.getStart,
        onPressed: () {
          pageController.nextPage(duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
          setState(() {
            isFirstPage = false;
          });
        },
        style: getBoldTextStyle(color: AppColors.white),
      );*/


}
