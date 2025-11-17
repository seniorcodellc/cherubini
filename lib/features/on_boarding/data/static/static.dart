import 'package:cherubini/exports.dart';
import 'package:cherubini/exports.dart';
import '../models/onboarding_model.dart';
class OnboardingStatics {
  static List<OnboardingModel> onBoardingItems = [
    OnboardingModel(
      imagePath: AppAssets.onboarding1,
      title: AppStrings.onBoarding1Title.trans,
      subTitle: AppStrings.onBoarding1SubTitle.trans,
    ),
    OnboardingModel(
      imagePath: AppAssets.onboarding2,
      title: AppStrings.onBoarding2Title.trans,
      subTitle: AppStrings.onBoarding2SubTitle.trans,
    ),
    OnboardingModel(
      imagePath: AppAssets.onboarding3,
      title: AppStrings.onBoarding3Title.trans,
      subTitle: AppStrings.onBoarding3SubTitle.trans,
    ),
  ];
}

