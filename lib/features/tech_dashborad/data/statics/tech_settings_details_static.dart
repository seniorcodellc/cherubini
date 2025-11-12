import 'package:cherubini/exports.dart';

import '../models/tech_settings_model.dart';

class TechSettingsDetailsStatic {
  static List<TechSettingsModel> techSettingsDetailsList = [
    TechSettingsModel(title: AppStrings.profileEdit, asset: AppAssets.profile),
    TechSettingsModel(
      title: AppStrings.profileChangePassword,
      asset: AppAssets.lock,
    ),
    // TechSettingsModel(
    //   title: AppStrings.profileWarrantyCertificates,
    //   asset: AppAssets.profile,
    // ),
  ];
}
