import 'package:cherubini/exports.dart';
import 'package:cherubini/core/widgets/custom_background.dart';
import 'package:cherubini/features/on_boarding/presentation/widgets/details_onboarding_section.dart';
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      backgroundColor:AppColors.bgColor,
      child: DetailsOnboardingSection(),
    );
  }
}
