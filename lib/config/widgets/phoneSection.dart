import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../exports.dart';

Widget PhoneSection(TextEditingController controller) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Directionality(
        textDirection: TextDirection.ltr,
        child: InternationalPhoneNumberInput(
          hintText: AppStrings.enterThePhoneNumber.trans,
          initialValue: PhoneNumber(isoCode: 'SA'),
          inputDecoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.borderColor2, width: 1.4),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: AppColors.borderColor2, width: 1.4),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide:
                  const BorderSide(color: AppColors.primaryColor, width: 1.4),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: const BorderSide(color: AppColors.red, width: 1.4),
            ),
          ),
          inputBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide(color: AppColors.borderColor2, width: 1.4),
          ),
          onInputChanged: (PhoneNumber number) {
            if (kDebugMode) {
              log(number.phoneNumber.toString());
              // onPhoneNumberChanged.call(
              //     phone: number.parseNumber().toString(),
              //     countryCode: number.dialCode.toString());
            }

            // loginCountryId = number.isoCode!;
          },
          onInputValidated: (bool value) {
            if (kDebugMode) {
              log(value.toString());
            }
          },
          selectorConfig: const SelectorConfig(
            selectorType: PhoneInputSelectorType.DIALOG,
            useBottomSheetSafeArea: true,
            leadingPadding: 10,
            trailingSpace: false,
            setSelectorButtonAsPrefixIcon: true,
          ),
          ignoreBlank: false,
          autoValidateMode: AutovalidateMode.onUserInteraction,
          selectorTextStyle:
              getRegularTextStyle(fontSize: 16, color: AppColors.primaryColor),
          validator: (String? value) {
            if (value!.isEmpty) {
              return AppStrings.phoneRequired.trans;
            }
            return null;
          },
          textFieldController: controller,
          formatInput: true,
          keyboardType: const TextInputType.numberWithOptions(
              signed: true, decimal: true),
          onSaved: (PhoneNumber number) {
            if (kDebugMode) {
              log('On Saved: $number');
            }
          },
        ),
      ),
    ],
  );
}
