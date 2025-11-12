import 'package:cherubini/exports.dart';

import 'check_row.dart';

class CheckPopup extends StatefulWidget {
  const CheckPopup({super.key});

  @override
  State<CheckPopup> createState() => _CheckPopupState();
}

class _CheckPopupState extends State<CheckPopup> {
  // null = none selected, true = Paid, false = Not Paid
  bool? isPaidSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(vertical: 16.0.h, horizontal: 16.0.w),
      child: Column(
        children: [
          CheckRow(
            label: AppStrings.paid,
            isSelected: isPaidSelected == true,
            onTap: () => setState(() => isPaidSelected = true),
          ),
          12.vs,
          CheckRow(
            label: AppStrings.notPaid,
            isSelected: isPaidSelected == false,
            onTap: () => setState(() => isPaidSelected = false),
          ),
        ],
      ),
    );
  }

}