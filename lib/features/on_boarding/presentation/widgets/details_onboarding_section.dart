import 'package:cherubini/features/on_boarding/presentation/widgets/onboarding_buttons.dart';

import '../../../../exports.dart';
import '../../data/static/static.dart';
import 'onboarding_dots.dart';

class DetailsOnboardingSection extends StatefulWidget {
  const DetailsOnboardingSection({super.key});


  @override
  State<DetailsOnboardingSection> createState() => _DetailsOnboardingSectionState();
}

class _DetailsOnboardingSectionState extends State<DetailsOnboardingSection> {
  final PageController pageController = PageController();
  int currentPage = 0;
  void nextPage() {
    if (currentPage < OnboardingStatics.onBoardingItems.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInCirc,
      );
    } else {
      Routes.dashboardRoute.moveTo();
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      onPageChanged: (int page) {
        setState(() {
          currentPage = page;
        });
      },
      itemCount: OnboardingStatics.onBoardingItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: getPadding(horizontal: 16.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              220.vs,
              CustomPngImage(image: OnboardingStatics.onBoardingItems[index].imagePath,),
              35.vs,
              Text(
                OnboardingStatics.onBoardingItems[index].title,
                style: getSemiBoldTextStyle(
                  fontSize: 24.sp,
                  color: AppColors.primaryColor,
                ),
              ),
              10.vs,
              Padding(
                padding: getPadding(horizontal: 30.0),
                child: Text(
                  OnboardingStatics.onBoardingItems[index].subTitle,
                  textAlign: TextAlign.center,
                  style: getRegularTextStyle(
                    fontSize: 14.sp,
                    color: AppColors.subTitleColor,
                  ),
                ),
              ),
              10.vs,
              OnboardingDots(currentPage: currentPage,),
              OnboardingButtons(onTap: () { nextPage(); },),
            ],
          ),
        );
      },
    );
  }
}

