import 'package:cherubini/exports.dart';

class OnboardingButtons extends StatelessWidget {
  const OnboardingButtons({super.key, required this.onTap});

  final VoidCallback  onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        100.vs,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){},
              child: Text(
                'تخطي',
                style: getRegularTextStyle(
                  fontSize: 16.sp,
                  color: AppColors.subTitleColor,
                ),
              ),
            ),
            CustomButton(
              text: 'التالي',
              svgIconPath: AppAssets.leftArrow,
              onPressed: onTap,
              height: 50.0.h,
            ),
          ],
        ),
      ],
    );
  }
}
