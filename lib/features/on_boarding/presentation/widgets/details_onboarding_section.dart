import '../../../../exports.dart';
import '../../data/models/static.dart';
import '../../data/static/static.dart';

class DetailsOnboardingSection extends StatelessWidget {
  const DetailsOnboardingSection({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: PageView.builder(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: onBoardingItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              166.vs,
              Text(
                onBoardingItems[index].imagePath,
                style: getRegularTextStyle(fontSize: 16),
              ),
              8.vs,
              Text(onBoardingItems[index].title, style: getBoldTextStyle()),
              8.vs,
              Text(
                onBoardingItems[index].subTitle,
                style: getRegularTextStyle(
                  fontSize: 13,
                  color: AppColors.black,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
