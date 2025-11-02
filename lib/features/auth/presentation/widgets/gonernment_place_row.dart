import 'package:cherubini/features/auth/presentation/widgets/custom_login_signup_textfield_text.dart';
import 'package:cherubini/features/auth/presentation/widgets/government_place_dropdown_button.dart';
import '../../../../exports.dart';

class GovernmentPlaceRow extends StatelessWidget {
  const GovernmentPlaceRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLoginSignupTextfieldText(
              text: AppStrings.governmentAr,
              child: GovernmentPlaceDropdownButton(
                hint: AppStrings.governmentHintAr,
              ),
            ),
          ],
        ),
        15.hs,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomLoginSignupTextfieldText(
              text: AppStrings.placeAr,
              child: GovernmentPlaceDropdownButton(
                hint: AppStrings.placeHintAr,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
